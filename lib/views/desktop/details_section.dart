import 'package:flutter/material.dart';
import '../../widgets/intro_text_row.dart';
class DetailsSection extends StatelessWidget {
  const DetailsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        IntroTextRow(
            title: 'NAME :', text: 'Muhammad Jawad'),
        IntroTextRow(title: 'CITY :', text: 'Lahore'),
        IntroTextRow(
            title: 'BIRTHDAY :', text: '14. 01. 1998'),
        IntroTextRow(
            title: 'INTEREST:', text: 'Music, Gaming, Tech'),
        IntroTextRow(
            title: 'EMAIL :', text: 'rana.jawad98@gmail.com'),
        IntroTextRow(
            title: 'WEBSITE :', text: 'www.yourwebsite.com'),
      ],
    );
  }
}
