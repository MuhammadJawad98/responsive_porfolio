import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';
class CustomCacheImage extends StatelessWidget {
  const CustomCacheImage({Key? key,required this.imageUrl}) : super(key: key);
final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      placeholder: (context, url) =>
      const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) =>
      const Center(child: Icon(Icons.error,color: AppColors.whiteColor,)),
      imageUrl: imageUrl,
    );
  }
}
