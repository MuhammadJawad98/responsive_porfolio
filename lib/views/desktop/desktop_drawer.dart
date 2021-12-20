import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/custom_text.dart';
import 'package:portfolio/widgets/title_text.dart';

class DesktopDrawer extends StatelessWidget {
  const DesktopDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                '01',
                style: TextStyle(color: AppColors.greenColor,fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 100,
              height: 5,
              color: AppColors.whiteColor,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                '06',
                style: TextStyle(color: AppColors.whiteColor,fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0,),
        const TitleText(
          text: 'Name',
        ),
        const  CustomText(text:'Jacob Hawkins'),
        const TitleText(
          text: 'Role',
        ),
        const CustomText(text:'Designer'),
        const TitleText(
          text: 'Email',
        ),
        const CustomText(text:'stone@example.com'),
        const TitleText(
          text: 'Phone',
        ),
        const CustomText(text:'(+987) 987 654 321'),
      ],
    );
  }
}
