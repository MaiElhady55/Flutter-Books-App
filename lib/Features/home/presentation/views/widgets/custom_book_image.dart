import 'package:bookly_app/core/utils/assets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  final String imageUrl;

  const CustomBookImage({super.key, required this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4, //width:height
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          fit: BoxFit.fill,
          //placeholder:(context, url) => const Center(child: CircularProgressIndicator(),),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          )
      ),
    );
  }
}