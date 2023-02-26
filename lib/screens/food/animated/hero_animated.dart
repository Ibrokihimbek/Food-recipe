import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:food_edamam/utils/app_images.dart';
import 'package:shimmer/shimmer.dart';

class PhotoHero extends StatelessWidget {
  const PhotoHero({
    Key? key,
    required this.photo,
  }) : super(key: key);

  final String photo;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: photo,
      child: Material(
        color: Colors.transparent,
        child: CachedNetworkImage(
          imageUrl: photo,
          fit: BoxFit.cover,
          placeholder: (context, url) {
            return Shimmer.fromColors(
              period: const Duration(seconds: 2),
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                width: 120,
                height: 100,
                color: Colors.white,
              ),
            );
          },
          errorWidget: (context, url, error) => Image.asset(AppImages.recipe),
        ),
      ),
    );
  }
}
