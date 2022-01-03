import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';

class CustomImageTile extends StatefulWidget {
  const CustomImageTile({Key? key, required this.imgUrl, required this.text})
      : super(key: key);
  final String imgUrl;
  final String text;

  @override
  _CustomImageTileState createState() => _CustomImageTileState();
}

class _CustomImageTileState extends State<CustomImageTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CachedNetworkImage(
          placeholder: (context,url) => const Center(child: CircularProgressIndicator()),
          errorWidget: (context,url,error) => const Center(child: Icon(Icons.error)),
          imageUrl: widget.imgUrl,
          fit: BoxFit.cover,
          width: 350,
          height: 700,
        ),
        CustomText(
          text: widget.text,
          fontSize: 30,
        ),
      ],
    );
  }
}
