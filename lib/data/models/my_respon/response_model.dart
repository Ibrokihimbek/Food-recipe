class MyResponse {
  MyResponse({
    this.data,
    required this.error,
  });

  dynamic data;
  String error = "";
}