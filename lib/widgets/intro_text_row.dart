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
    var _width = MediaQuery.of(context).size.width;
    return _width <= 1450
        ? Column(
      mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TitleText(
                text: title,
                fontWeight: FontWeight.bold,
              ),
              CustomText(text: text)
            ],
          )
        : Wrap(
            direction: Axis.horizontal,
            children: [
              SizedBox(
                  width: 90,
                  child: TitleText(
                    text: title,
                    fontWeight: FontWeight.bold,
                  )),
              CustomText(text: text)
            ],
          );
  }
}
