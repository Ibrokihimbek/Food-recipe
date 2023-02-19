import 'package:dio/dio.dart';

import 'custom_exeption.dart';

class ApiClient {
  ApiClient() {
    _init();
  }

  late Dio dio;

  _init() {
    dio = Dio(
      BaseOptions(
        baseUrl: "https://api.edamam.com/api/food-database/v2/parser",
        connectTimeout: 25000,
        receiveTimeout: 20000,
      ),
    );

    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioError error, ErrorInterceptorHandler handler) {
          switch (error.type) {
            case DioErrorType.connectTimeout:
            case DioErrorType.sendTimeout:
              throw DeadlineExceededException(error.requestOptions);
            case DioErrorType.receiveTimeout:
              throw ReceiveTimeOutException(error.requestOptions);
            case DioErrorType.response:
              switch (error.response?.statusCode) {
                case 400:
                  throw BadRequestException(error.response?.data['message']);
                case 401:
                  throw UnauthorizedException(error.requestOptions);
                case 404:
                  throw NotFoundException(error.requestOptions);
                case 409:
                  throw ConflictException(error.requestOptions);
                case 500:
                case 501:
                case 503:
                  throw InternalServerErrorException(error.requestOptions);
              }
              break;
            case DioErrorType.cancel:
              break;
            case DioErrorType.other:
              throw NoInternetConnectionException(error.requestOptions);
          }
          return handler.next(error);
        },
        onRequest:
            (RequestOptions requestOptions, RequestInterceptorHandler handler) {
          return handler.next(requestOptions);
        },
        onResponse: (Response response, ResponseInterceptorHandler handler) {
          return handler.next(response);
        },
      ),
    );
  }
}