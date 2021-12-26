import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../../widgets/contact_form.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_tile.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/experience_tile.dart';
import '../../widgets/intro_text_row.dart';
import '../../widgets/intro_tile.dart';
import '../../widgets/linear_chart.dart';
import '../../widgets/title_text.dart';
import '../../widgets/custom_space.dart';

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            height: height,
            child: Row(children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    TitleText(
                      text: 'Hi, I\'m Muhammad Jawad',
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: 'I build value through design.',
                      fontSize: 35,
                    ),
                    CustomText(
                      text:
                          'I\'m a Pakistani who loves building digital products.',
                      fontSize: 18,
                    ),
                    TitleText(
                      text: 'Learn more >',
                      fontSize: 18,
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.network(Constants.profileImage))),
            ]),
          ),
          // const CustomSpace(
          //   height: 80,
          // ),
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
                    const CustomSpace(
                      height: 20,
                    ),
                    const TitleText(
                      text:
                          'Hi, my name is Muhammad Jawad. Graduated as a computer science student from University of Education,Lahore.',
                      fontSize: 22,
                      fontWeight: FontWeight.w400,
                    ),
                    const CustomSpace(
                      height: 20,
                    ),
                    const CustomText(
                      text:
                          'I started my career as an Android developer. Working on different projects fixing bugs , adding new features & updating Ui are part of my role. Then i start learning Flutter which create a-lot of interest in it. Its simplicity and flexibility makes me Flutter FAN. Then started my career as an Flutter developer. Working on different projects like e-commerce, educational apps and currently working on group conferencing app like zoom.',
                    ),
                    const CustomSpace(
                      height: 50,
                    ),
                    const IntroTextRow(title: 'NAME :', text: 'Muhammad Jawad'),
                    const IntroTextRow(title: 'CITY :', text: 'Lahore'),
                    const IntroTextRow(title: 'BIRTHDAY :', text: '14. 01. 1998'),
                    const IntroTextRow(title: 'INTEREST:', text: 'Music'),
                    const IntroTextRow(title: 'EMAIL :', text: 'rana.jawad98@gmail.com'),
                    const IntroTextRow(title: 'WEBSITE :', text: 'www.yourwebsite.com'),
                    CustomRoundButton(
                      text: 'Download CV',
                      onPress: () {},
                      height: 60,
                      width: 100,
                      buttonColor: AppColors.greyDarkColor,
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
          const CustomSpace(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomImageTile(
                imgUrl: Constants.projectNiffty,
                text: 'Niffty',
              ),
              CustomSpace(
                width: 50.0,
              ),
              CustomImageTile(
                imgUrl: Constants.projectNeighbourHub,
                text: 'Neighbourhub.de',
              ),
              CustomSpace(
                width: 50.0,
              ),
              CustomImageTile(
                imgUrl: Constants.projectGearsUnlimited,
                text: 'Gears Unlimited',
              ),
            ],
          ),
          const CustomSpace(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomImageTile(
                imgUrl: Constants.projectFacebookClone,
                text: 'Facebook Clone',
              ),
              CustomSpace(
                width: 50.0,
              ),
              CustomImageTile(
                imgUrl: Constants.projectPopeye,
                text: 'Popeye',
              ),
              CustomSpace(
                width: 50.0,
              ),
              CustomImageTile(
                imgUrl: Constants.projectMizdah,
                text: 'Mizdah',
              ),
            ],
          ),
          const CustomSpace(
            height: 50,
          ),
          // Row(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          //   children: [
          //     Expanded(child:
                  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  TitleText(
                    text: 'Experience',
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                  ExperienceTile(title: '2015', text: Constants.text),
                  ExperienceTile(title: '2015', text: Constants.text),
                  ExperienceTile(title: '2015', text: Constants.text),
                  ExperienceTile(title: '2015', text: Constants.text),
                  ExperienceTile(
                      title: '2015', text: Constants.text, isLast: true),
                ],
              ),
    // ),
              // Expanded(
              //     child: Column(
              //         crossAxisAlignment: CrossAxisAlignment.start,
              //         children: const [
              //       TitleText(
              //         text: 'Cover letter',
              //         fontSize: 30,
              //         fontWeight: FontWeight.bold,
              //       ),
              //       TitleText(
              //         text:
              //             'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra tristique placerat in massa consectetur quisque nunc fames',
              //         fontSize: 22.0,
              //       ),
              //       CustomSpace(
              //         height: 30,
              //       ),
              //       CustomText(
              //         text:
              //             'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra tristique placerat in massa consectetur quisque. Nunc ac fames lectus in libero aliquet. Mauris egestas nulla arcu, ut vestibulum diam vulputate non. Ut massa mauris, condimentum ut tincidunt eu, mattis euismod dolor.',
              //         fontSize: 20,
              //       ),
              //       CustomSpace(
              //         height: 30,
              //       ),
              //       CustomText(
              //         text:
              //             'Faucibus sed tristique fames sed aliquet ultricies eget viverra arcu. Vitae faucibus diam consequat maecenas. Turpis metus sit diam purus leo in varius ac quam. Nunc amet tristique volutpat adipiscing vulputate phasellus. Volutpat faucibus sed condimentum aliquet mi, nec lobortis neque gravida tempor.',
              //         fontSize: 20.0,
              //       ),
              //       CustomSpace(
              //         height: 30,
              //       ),
              //       CustomText(
              //         text:
              //             'Faucibus sed tristique fames sed aliquet ultricies eget viverra arcu. Vitae faucibus diam consequat maecenas. Turpis metus sit diam purus leo in varius ac quam. Nunc amet tristique volutpat adipiscing vulputate phasellus. Volutpat faucibus sed condimentum aliquet mi, nec lobortis neque gravida tempor.',
              //         fontSize: 20.0,
              //       ),
              //     ])),
          //   ],
          // ),
          const CustomSpace(
            height: 50,
          ),
          const TitleText(
            text: 'Skills',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
          Wrap(
            direction: Axis.horizontal,
            children: const [
              LinearChart(width: 200, percentage: '50%', title: 'Creativity'),
              LinearChart(width: 250, percentage: '70%', title: 'PhP'),
              LinearChart(width: 270, percentage: '90%', title: 'Cooking'),
              LinearChart(width: 220, percentage: '65%', title: 'Marketing'),
            ],
          ),
          const CustomSpace(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 20.0),
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Padding(
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
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Viverra tristique placerat in massa consectetur quisque nunc fames.',
                            fontSize: 22,
                          ),
                          CustomSpace(
                            height: 30,
                          ),
                          CustomText(
                              text:
                                  'Magni dolores eos qui sed quia consequuntur ratione voluptatem sequi nesciunt permano Nence of the stars from which we spring muse about as a patch of light billions upon billions.'),
                          CustomSpace(
                            height: 30,
                          ),
                          CustomText(
                              text:
                                  'Energy hidden in matter a mote of lorem ipsum dust suspended in a sunbeam billions upon ratione voluptatem sequi nesciunt permano lorem ipsum.'),
                          CustomSpace(
                            height: 30,
                          ),
                          IntroTextRow(
                              title: 'ADDRESS :', text: 'Some Street 987, USA'),
                          IntroTextRow(
                              title: 'EMAIL :      ',
                              text: 'company@youremail.com'),
                          IntroTextRow(
                              title: 'WEBSITE : ', text: 'www.yourwebsite.com'),
                        ],
                      ),
                    )),
                const Expanded(
                  flex: 5,
                  child: ContactForm(),
                ),
              ],
            ),
          ),
          const CustomSpace(
            height: 50,
          ),
        ],
      ),
    );
  }
}
