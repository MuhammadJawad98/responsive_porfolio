import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../views/desktop/get_in_touch_view.dart';
import '../../utils/common_functions.dart';
import '../../widgets/social_media_icon.dart';
import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../../widgets/contact_form.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_image_tile.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/experience_tile.dart';
import '../../widgets/intro_text_row.dart';
import '../../widgets/linear_chart.dart';
import '../../widgets/title_text.dart';
import '../../widgets/custom_space.dart';

class DesktopContent extends StatelessWidget {
  const DesktopContent({Key? key,required this.scrollController}) : super(key: key);
final  ScrollController scrollController;
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    var size = MediaQuery.of(context).size;
    final height = size.height;
    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(15.0),
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
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
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
                      const IntroTextRow(
                          title: 'NAME :', text: 'Muhammad Jawad'),
                      const IntroTextRow(title: 'CITY :', text: 'Lahore'),
                      const IntroTextRow(
                          title: 'BIRTHDAY :', text: '14. 01. 1998'),
                      const IntroTextRow(
                          title: 'INTEREST:', text: 'Music, Gaming, Tech'),
                      const IntroTextRow(
                          title: 'EMAIL :', text: 'rana.jawad98@gmail.com'),
                      const IntroTextRow(
                          title: 'WEBSITE :', text: 'www.yourwebsite.com'),
                      const CustomSpace(
                        height: 30,
                      ),
                      Wrap(
                        direction: Axis.horizontal,
                        children: [
                          CustomRoundButton(
                            text: 'Download CV',
                            onPress: () {
                              launchURL(Constants.resumeLink);
                            },
                            height: 60,
                            width: 100,
                            buttonColor: AppColors.greyDarkColor,
                          ),
                          CustomRoundButton(
                            text: 'My Portfolio',
                            onPress: () {
                              scrollController.animateTo(
                                scrollController.position.pixels +
                                    150,
                                curve: Curves.easeOut,
                                duration: const Duration(milliseconds: 300),
                              );
                            },
                            height: 60,
                            width: 100,
                            isActive: true,
                            buttonColor: AppColors.greenColor,
                            textColor: AppColors.whiteColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                    child: CachedNetworkImage(
                  imageUrl:Constants.dummyImage
                )),
              ],
            ),
          ),
          const CustomSpace(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0,),
            child: TitleText(text: 'Projects',fontSize: 30,
              fontWeight: FontWeight.bold,),
          ),
          GridView.builder(
            itemCount: Constants.projectData.length,
            shrinkWrap: true,

            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Get.width > 1600 ? 3 : Get.width < 1100?1: 2,
                // childAspectRatio: (itemWidth / itemHeight),
                mainAxisExtent: 800,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return CustomImageTile(
                imgUrl: Constants.projectData[index].imageUrl,
                text: Constants.projectData[index].name,
              );
            },
          ),

          const CustomSpace(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                TitleText(
                  text: 'Experience',
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ExperienceTile(
                  title: '2020',
                  text: Constants.nifftyDesc,
                ),
                ExperienceTile(title: '2020', text: Constants.neighbourhubDesc),
                ExperienceTile(
                    title: '2021', text: Constants.gearsUnlimitedDesc),
                ExperienceTile(title: '2021', text: Constants.facebookDesc),
                ExperienceTile(title: '2021', text: Constants.popeyeDesc),
                ExperienceTile(title: '2021', text: Constants.ablohDesc),
                ExperienceTile(
                    title: '2021', text: Constants.mizdahDesc, isLast: true),
              ],
            ),
          ),

          const CustomSpace(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: TitleText(
              text: 'Skills',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: GridView.builder(
              itemCount: Constants.skills.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                // crossAxisCount: Get.width > 1550 ? 3 : 2,
                crossAxisCount: Get.width > 1600 ? 3 : Get.width < 1100?1: 2,
                crossAxisSpacing: 50.0,
                // mainAxisSpacing: 8.0,
                // childAspectRatio:1/0.3,
                mainAxisExtent: 105,
              ),
              itemBuilder: (BuildContext context, int index) {
                return LinearChart(
                    percent: Constants.skills[index].percent,
                    percentage: Constants.skills[index].percentage,
                    title: Constants.skills[index].title);
              },
            ),
          ),
          const CustomSpace(
            height: 50,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20.0),
            child: TitleText(
              text: 'Project Highlights',
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          CarouselSlider(
            options: CarouselOptions(
              height: 400.0,
              scrollDirection: Axis.horizontal,
              viewportFraction: 0.9,
              // aspectRatio: 2.0,
              autoPlay: true,
              enlargeCenterPage: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              // viewportFraction: 0.8,
            ),
            carouselController: buttonCarouselController,
            items: Constants.projectData.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    // width: MediaQuery.of(context).size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Image.network(item.imageUrl),
                  );
                },
              );
            }).toList(),
          ),
          const CustomSpace(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0, right: 20.0),
            child: size.width < 650
                ? Column(children:const [
              GetInTouchView(),
              CustomSpace(height: 20,),
              ContactForm(),
            ]): Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                    flex: 3,
                    child: GetInTouchView()),
                Expanded(
                  flex: 5,
                  child: ContactForm(),
                ),
              ],
            ),
          ),
          const CustomSpace(
            height: 50,
          ),
          Container(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            color: AppColors.greyDarkColor,
            child: Column(
              children: [
                Center(
                  child: Wrap(
                      direction: Axis.horizontal,
                      alignment: WrapAlignment.center,
                      children: [
                        SocialMediaIcon(
                            icon: AntDesign.instagram,
                            text: 'Instagram',
                            iconColor: AppColors.instaColor,
                            onTap: () {
                              launchURL(Constants.instaUrl);
                            }),
                        SocialMediaIcon(
                            icon: Entypo.youtube,
                            text: 'Youtube',
                            iconColor: AppColors.youtubeColor,
                            onTap: () {
                              launchURL(Constants.youtubeUrl);
                            }),
                        SocialMediaIcon(
                            icon: AntDesign.github,
                            text: 'Github',
                            iconColor: AppColors.blackColor,
                            onTap: () {
                              launchURL(Constants.githubUrl);
                            }),
                        SocialMediaIcon(
                            icon: FontAwesome.facebook,
                            text: 'Facebook',
                            iconColor: AppColors.fbColor,
                            onTap: () {
                              launchURL(Constants.facebookUrl);
                            }),
                        SocialMediaIcon(
                            icon: Entypo.twitter,
                            text: 'Twitter',
                            iconColor: AppColors.twitterColor,
                            onTap: () {
                              launchURL(Constants.twitterUrl);
                            }),
                        SocialMediaIcon(
                            icon: Entypo.linkedin,
                            text: 'Linkedin',
                            iconColor: AppColors.linkedinColor,
                            onTap: () {
                              launchURL(Constants.linkedinUrl);
                            }),
                      ]),
                ),
                 const TitleText(
                    text:
                        'Copyright © 2021 Muhammad Jawad • Mobile App Developer',textAlign: TextAlign.center,
                 fontSize: 12,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
