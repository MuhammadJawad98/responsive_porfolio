import 'package:flutter/material.dart';
import 'package:portfolio/widgets/custom_text.dart';
import 'package:portfolio/widgets/title_text.dart';

class IntroTextRow extends StatelessWidget {
  const IntroTextRow({Key? key, required this.title, required this.text})
      : super(key: key);
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [TitleText(text: title,fontWeight: FontWeight.bold,), CustomText(text: text)],
    );
  }
}
