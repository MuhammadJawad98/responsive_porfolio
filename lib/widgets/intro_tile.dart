import 'package:flutter/material.dart';
import '../widgets/custom_text.dart';
import '../widgets/title_text.dart';

class IntroTile extends StatelessWidget {
  const IntroTile(
      {Key? key,
      required this.iconPath,
      required this.heading,
      required this.text})
      : super(key: key);
  final String iconPath;
  final String heading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Image.asset(iconPath,width: 200,
              height: 200,
              fit:BoxFit.fill  ),
        ),
        TitleText(text: heading),
        CustomText(text: text),
      ],
    );
  }
}
