import 'package:flutter/material.dart';

import '../utils/colors.dart';
class CustomText extends StatelessWidget {
  const CustomText({Key? key, required this.text, this.fontSize})
      : super(key: key);
  final String text;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(color: AppColors.whiteColor, fontSize: fontSize),
      ),
    );
  }
}
