import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_text.dart';
import 'package:portfolio/widgets/intro_tile.dart';
import 'package:portfolio/widgets/title_text.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(8.0),
      // height: 500,
      color: AppColors.greyColor,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleText(
                  text: 'Introduce',
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),
                const SizedBox(
                  height: 20,
                ),
                const TitleText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra tristique placerat in massa consectetur quisque nunc fames.',
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomText(
                    text:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra tristique placerat in massa consectetur quisque. Nunc ac fames lectus in libero aliquet tellus pharetra erat tristique erat donec dignissim etiam sed malesik enim sodales lorem ipsum donac.'),
                CustomRoundButton(
                  text: 'Download CV',
                  onPress: () {},
                  height: 60,
                  width: 100,
                  buttonColor: const Color(0xff2F2E38),
                ),
                CustomRoundButton(
                  text: 'Check my Portfolio',
                  onPress: () {},
                  height: 60,
                  width: 100,
                  isActive: true,
                  buttonColor: AppColors.greenColor,
                  textColor: AppColors.whiteColor,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
               Row(children: const [
                 Expanded(child: IntroTile(iconPath: Constants.iconDesign, heading: 'Design', text: 'A full stack allaround designer that may or may not include a guide for specific creative people')),
                 Expanded(child: IntroTile(iconPath: Constants.iconDesign, heading: 'Design', text: 'A full stack allaround designer that may or may not include a guide for specific creative people')),

               ],),
                Row(children: const [
                  Expanded(child: IntroTile(iconPath: Constants.iconDesign, heading: 'Design', text: 'A full stack allaround designer that may or may not include a guide for specific creative people')),
                  Expanded(child: IntroTile(iconPath: Constants.iconDesign, heading: 'Design', text: 'A full stack allaround designer that may or may not include a guide for specific creative people')),

                ],),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
