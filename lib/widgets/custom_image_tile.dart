import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_text.dart';

class CustomImageTile extends StatefulWidget {
  const CustomImageTile({Key? key, required this.imgUrl, required this.text})
      : super(key: key);
  final String imgUrl;
  final String text;

  @override
  _CustomImageTileState createState() => _CustomImageTileState();
}

class _CustomImageTileState extends State<CustomImageTile>
    with TickerProviderStateMixin {
  bool isHovered = false;

  hoverActivation(hoverState) {
    setState(() {
      isHovered = hoverState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          widget.imgUrl,
          fit: BoxFit.fill,
          width: 350,
          height: 350,
        ),
        MouseRegion(
          onEnter: (event) {
            hoverActivation(true);
          },
          onExit: (event) {
            hoverActivation(false);
          },
          child: AnimatedContainer(
            width: 350,
            height: 350,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: CustomText(
                text: isHovered ? widget.text : '',
              ),
            ),
            duration: const Duration(milliseconds: 200),
            color: isHovered ? AppColors.greenColor : null,
          ),
        )
      ],
    );
  }
}
