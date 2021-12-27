import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
    return SizedBox(width: 400,
      child: Row(
crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:25.0),
                    child: Stack(children: [
                      Padding(
                        padding: const EdgeInsets.only(top:5.0,bottom: 5.0),
                        child: Container(
                          width: 400,
                          height: 20,
                          color: AppColors.greyDarkColor,
                        ),
                      ),
                      Container(
                        width: (percent/100)*400,
                        height: 30,
                        color: AppColors.greenColor,
                      ),
                    ]),
                  ),
                  TitleText(
                    text: title,
                    fontSize: 22,
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: TitleText(
              text: percentage,
              fontSize: 45,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
