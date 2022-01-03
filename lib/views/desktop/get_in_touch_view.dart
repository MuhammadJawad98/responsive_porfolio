import 'package:flutter/material.dart';
import '../../widgets/custom_space.dart';
import '../../widgets/intro_text_row.dart';
import '../../widgets/title_text.dart';
class GetInTouchView extends StatelessWidget {
  const GetInTouchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          TitleText(
            text: 'Get in touch',
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
          CustomSpace(
            height: 30,
          ),
          TitleText(
            text:
            'If you wanna get in touch, talk to me about a project collaboration or just say hi, fill up the awesome form or send an email to rana.jawad98@gmail.com and ~let\'s talk.',
            fontSize: 22,
          ),
          CustomSpace(
            height: 30,
          ),
          // IntroTextRow(
          //     title: 'ADDRESS :', text: 'Opposite General Hospital Lahore'),
          IntroTextRow(
              title: 'EMAIL :      ',
              text: 'rana.jawad98@gmail.com'),
          IntroTextRow(
              title: 'WEBSITE : ', text: 'muhammadjawad98.github.io/portfolio/'),
        ],
      ),
    );
  }
}
