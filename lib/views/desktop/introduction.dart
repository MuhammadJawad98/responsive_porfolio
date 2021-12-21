import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/custom_image_tile.dart';
import 'package:portfolio/widgets/custom_text.dart';
import 'package:portfolio/widgets/intro_text_row.dart';
import 'package:portfolio/widgets/intro_tile.dart';
import 'package:portfolio/widgets/title_text.dart';

class IntroductionSection extends StatefulWidget {
  const IntroductionSection({Key? key}) : super(key: key);

  @override
  State<IntroductionSection> createState() => _IntroductionSectionState();
}

class _IntroductionSectionState extends State<IntroductionSection> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    var _activeStepIndex=0;
    List<Step> stepList() => [
      const Step(title: CustomText(text:'Account'), content: Center(child: CustomText(text:'Account'),)),
      const Step(title: CustomText(text:'Address'), content: Center(child: CustomText(text:'Address'),)),
      const Step(title: CustomText(text:'Confirm'), content: Center(child: CustomText(text:'Confirm'),))
    ];
    return Container(
      width: double.infinity,
      height: height,
      padding: const EdgeInsets.all(8.0),
      // height: 500,
      color: AppColors.greyColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      const SizedBox(
                        height: 50,
                      ),
                      const IntroTextRow(title: 'NAME:', text: 'Jacob Hawkins'),
                      const IntroTextRow(title: 'CITY:', text: 'New York'),
                      const IntroTextRow(
                          title: 'BIRTHDAY:', text: '25. 03. 1987'),
                      const IntroTextRow(
                          title: 'INTEREST:', text: 'Basketball, Formula 1'),
                      const IntroTextRow(
                          title: 'EMAIL:', text: 'company@youremail.com'),
                      const IntroTextRow(
                          title: 'WEBSITE:', text: 'www.yourwebsite.com'),
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
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: const [
                          Expanded(
                              child: IntroTile(
                                  iconPath: Constants.iconDesign,
                                  heading: 'Design',
                                  text:
                                      'A full stack allaround designer that may or may not include a guide for specific creative people')),
                          Expanded(
                              child: IntroTile(
                                  iconPath: Constants.iconDevelop,
                                  heading: 'Develop',
                                  text:
                                      'A full stack allaround designer that may or may not include a guide for specific creative people')),
                        ],
                      ),
                      Row(
                        children: const [
                          Expanded(
                              child: IntroTile(
                                  iconPath: Constants.iconPromote,
                                  heading: 'Promote',
                                  text:
                                      'A full stack allaround designer that may or may not include a guide for specific creative people')),
                          Expanded(
                              child: IntroTile(
                                  iconPath: Constants.iconWrite,
                                  heading: 'Write',
                                  text:
                                      'A full stack allaround designer that may or may not include a guide for specific creative people')),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 80,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomImageTile(imgUrl: Constants.image1,text: 'Demo 1',),
                SizedBox(width: 50.0,),
                CustomImageTile(imgUrl: Constants.image2,text: 'Demo 2',),
                SizedBox(width: 50.0,),
                CustomImageTile(imgUrl: Constants.image3,text: 'Demo 3',),

              ],
            ),
            const SizedBox(height: 50,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CustomImageTile(imgUrl: Constants.image4,text: 'Demo 4',),
                SizedBox(width: 50.0,),
                CustomImageTile(imgUrl: Constants.image5,text: 'Demo 5',),
                SizedBox(width: 50.0,),
                CustomImageTile(imgUrl: Constants.image6,text: 'Demo 6',),
              ],
            ),
            const SizedBox(height: 50,),
            Stepper(steps: stepList(),
              currentStep: _activeStepIndex,
              onStepContinue: () {
                // goto next step, simply increment currentStep value by +1
              },
              onStepCancel: () {
                // goto previous step, simply decrement currentStep value by -1
              },
              onStepTapped: (int index) {
                setState(() {
                  // directly jump to particular step in stepper
                  _activeStepIndex = index;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}