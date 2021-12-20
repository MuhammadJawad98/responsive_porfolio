import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key, required this.text, this.fontSize})
      : super(key: key);
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(color: AppColors.greenColor, fontSize: fontSize),
      ),
    );
  }
}
