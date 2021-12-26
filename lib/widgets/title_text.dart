import 'package:flutter/material.dart';
import '../utils/colors.dart';

class TitleText extends StatelessWidget {
  const TitleText(
      {Key? key,
      required this.text,
      this.fontSize,
      this.fontWeight,
      this.textAlign})
      : super(key: key);
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        textAlign: textAlign,
        style: TextStyle(
            color: AppColors.greenColor,
            fontSize: fontSize,
            fontWeight: fontWeight),
      ),
    );
  }
}
