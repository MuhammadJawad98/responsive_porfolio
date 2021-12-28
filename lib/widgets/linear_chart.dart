import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../utils/colors.dart';
import '../widgets/title_text.dart';

class LinearChart extends StatelessWidget {
  const LinearChart(
      {Key? key, required this.percent, required this.percentage, required this.title})
      : super(key: key);
  final double percent;
  final String percentage;
  final String title;

  @override
  Widget build(BuildContext context) {
    // double width= 400;
    double width= Get.width > 1600 ? 400 :  350;
    // double width= Get.width > 1600 ? 400 : Get.width < 1100?300: 350;
    // double fontSize= Get.width > 1600 ? 40 : Get.width < 1100?25: 30;
    // print('>>>> $fontSize');
    return SizedBox(
        width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Padding(
          padding: const EdgeInsets.only(top:25.0),
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
              child: Container(
                width: width,
                height: 20,
                color: AppColors.greyDarkColor,
              ),
            ),
            Container(
              width: (percent/100)*width,
              height: 30,
              color: AppColors.greenColor,
            ),
          ]),
        ),
        Row(
          children: [
            TitleText(
              text: title,
              fontSize: 22,
            ),
            Padding(
              padding: const EdgeInsets.only(left:5.0),
              child: TitleText(
                text: percentage,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],)



    );
  }
}
