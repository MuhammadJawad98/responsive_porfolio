import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';
import '../widgets/title_text.dart';

class IntroTextRow extends StatelessWidget {
  const IntroTextRow({Key? key, required this.title, required this.text})
      : super(key: key);
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      children: [TitleText(text: title,fontWeight: FontWeight.bold,), CustomText(text: text)],
    );
  }
}
