import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio/controllers/home_controller.dart';

import '../../utils/colors.dart';
import '../../utils/common_functions.dart';
import '../../utils/constants.dart';
import '../../views/desktop/details_section.dart';
import '../../views/desktop/get_in_touch_view.dart';
import '../../views/desktop/social_media_icons.dart';
import '../../views/mobile/mobile_intro_section.dart';
import '../../views/mobile/mobile_top_section.dart';
import '../../widgets/contact_form.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_cache_image.dart';
import '../../widgets/custom_fade_transition.dart';
import '../../widgets/custom_image_tile.dart';
import '../../widgets/custom_slide_transition.dart';
import '../../widgets/custom_space.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/linear_chart.dart';
import '../../widgets/title_text.dart';

class DesktopContent extends StatelessWidget {
   DesktopContent({Key? key, required this.scrollController})
      : super(key: key);
  final ScrollController scrollController;
final homeController = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    CarouselController buttonCarouselController = CarouselController();
    var size = MediaQuery.of(context).size;
    final height = size.height;
    return ListView(
      controller: scrollController,
      shrinkWrap: true,
      children: [
        Container(
          padding: const EdgeInsets.all(15.0),
          width: double.infinity,
          height: height ,
          child: size.width < 650
              ? CustomSlideTransition(
                  beginOffset: Offset(-10, 0),
                  endOffset: Offset(0, 0),
                  child: MobileTopSection(
                    scrollController: scrollController,
                  ),
                )
              : Row(children: [
                  Expanded(
                    child: CustomSlideTransition(
                      beginOffset: Offset(-10, 0),
                      endOffset: Offset(0, 0),
                      seconds: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const TitleText(
                            text: Constants.hiIAmJawadText,
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                          const CustomText(
                            text: Constants.buildValueText,
                            fontSize: 35,
                          ),
                          const CustomText(
                            text: Constants.buildProductText,
                            fontSize: 18,
                          ),
                          GestureDetector(
                            onTap: () {
                              scrollController.animateTo(
                                scrollController.position.pixels + 300,
                                curve: Curves.easeOut,
                                duration: const Duration(milliseconds: 300),
                              );
                            },
                            child: TitleText(
                              text: 'Learn more >',
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomSlideTransition(
                      beginOffset: Offset(1, 0),
                      endOffset: Offset(0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: const CustomCacheImage(
                          imageUrl: Constants.profileImage,
                        ),
                      ),
                    ),
                    // Image.network(Constants.profileImage)),
                  ),
                ]),
        ),
        const CustomSpace(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: size.width < 1100
              ? CustomSlideTransition(
                  beginOffset: Offset(1, 0),
                  endOffset: Offset(0, 0),
                  child: MobileIntroSection(scrollController: scrollController))
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomSlideTransition(
                        beginOffset: Offset(-10, 0),
                        endOffset: Offset(0, 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const TitleText(
                              text: Constants.introduceText,
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                            ),
                            const CustomSpace(
                              height: 20,
                            ),
                            const TitleText(
                              text: Constants.intro,
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                            ),
                            const CustomSpace(
                              height: 20,
                            ),
                            const CustomText(text: Constants.introDescription),
                            const CustomSpace(
                              height: 50,
                            ),
                            const DetailsSection(),
                            const CustomSpace(
                              height: 30,
                            ),
                            Wrap(
                              direction: Axis.horizontal,
                              children: [
                                CustomRoundButton(
                                  text: Constants.downloadCv,
                                  onPress: () {
                                    launchURL(Constants.resumeLink);
                                  },
                                  height: 60,
                                  width: 100,
                                  buttonColor: AppColors.greyDarkColor,
                                ),
                                CustomRoundButton(
                                  text: Constants.myPortfolio,
                                  onPress: () {
                                    scrollController.animateTo(
                                      scrollController.position.pixels + 150,
                                      curve: Curves.easeOut,
                                      duration:
                                          const Duration(milliseconds: 300),
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
                    ),
                    Expanded(
                      child: CustomSlideTransition(
                        beginOffset: Offset(1, 0),
                        endOffset: Offset(0, 0),
                        child: const CustomCacheImage(
                          imageUrl: Constants.dummyImage,
                        ),
                      ),
                    ),
                  ],
                ),
        ),
        const CustomSpace(
          height: 70,
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 20.0,
          ),
          child: TitleText(
            text: Constants.projects,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        GridView.builder(
          itemCount: Constants.projectData.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Get.width > 1600
                  ? 3
                  : Get.width < 1100
                      ? 1
                      : 2,
              mainAxisExtent: 800,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomFadeTransition(
                child: CustomImageTile(
                  imgUrl: Constants.projectData[index].imageUrl,
                  text: Constants.projectData[index].name,
                ),
              ),
            );
          },
        ),
        /*
         Obx((){
          return GridView.builder(
            itemCount: homeController.projectsList.length,
            // itemCount: Constants.projectData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Get.width > 1600
                    ? 3
                    : Get.width < 1100
                    ? 1
                    : 2,
                mainAxisExtent: 800,
                crossAxisSpacing: 4.0,
                mainAxisSpacing: 4.0),
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: CustomFadeTransition(
                  child: CustomImageTile(
                    // imgUrl: Constants.projectData[index].imageUrl,
                    // text: Constants.projectData[index].name,
                    imgUrl: homeController.projectsList[index].image,
                    text:homeController.projectsList[index].title,
                  ),
                ),
              );
            },
          );
        }),
         */
        const CustomSpace(
          height: 50,
        ),
        // Padding(
        //   padding: const EdgeInsets.only(left: 20.0, right: 20.0),
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: const [
        //       TitleText(
        //         text: Constants.experience,
        //         fontSize: 30,
        //         fontWeight: FontWeight.bold,
        //       ),
        //       ExperienceTile(
        //         title: Constants.text2020,
        //         text: Constants.nifftyDesc,
        //       ),
        //       ExperienceTile(
        //           title: Constants.text2020,
        //           text: Constants.neighbourhubDesc),
        //       ExperienceTile(
        //           title: Constants.text2021,
        //           text: Constants.gearsUnlimitedDesc),
        //       ExperienceTile(
        //           title: Constants.text2021, text: Constants.facebookDesc),
        //       ExperienceTile(
        //           title: Constants.text2021, text: Constants.popeyeDesc),
        //       ExperienceTile(
        //           title: Constants.text2021, text: Constants.ablohDesc),
        //       ExperienceTile(
        //           title: Constants.text2021,
        //           text: Constants.mizdahDesc,
        //           isLast: true),
        //     ],
        //   ),
        // ),
        const CustomSpace(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: TitleText(
            text: Constants.skillsText,
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
              crossAxisCount: Get.width > 1600
                  ? 3
                  : Get.width < 1100
                      ? 1
                      : 2,
              crossAxisSpacing: 50.0,
              mainAxisExtent: 105,
            ),
            itemBuilder: (BuildContext context, int index) {
              return Center(
                child: LinearChart(
                    percent: Constants.skills[index].percentage!,
                    percentage: '${Constants.skills[index].percentage}',
                    title: Constants.skills[index].title!),
              );
            },
          ),
        ),
        const CustomSpace(
          height: 50,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: TitleText(
            text: Constants.projectHighlights,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            height: 400.0,
            scrollDirection: Axis.horizontal,
            viewportFraction: 0.9,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
          ),
          carouselController: buttonCarouselController,
          items: Constants.projectsImages.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  padding: const EdgeInsets.all(8.0),
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: CustomCacheImage(imageUrl: item.imageUrl),
                );
              },
            );
          }).toList(),
        ),
        const CustomSpace(
          height: 50,
        ),
        // const Padding(
        //   padding: EdgeInsets.only(left: 20.0, right: 20.0),
        //   child: TitleText(
        //     text: 'Youtube Channel',
        //     fontSize: 30.0,
        //     fontWeight: FontWeight.bold,
        //   ),
        // ),
        // const YoutubeVideoPlayer(),
        // const CustomSpace(
        //   height: 50,
        // ),
        Padding(
          padding: const EdgeInsets.only(left: 5.0, right: 5.0),
          child: size.width < 1100
              ? Column(children: [
                  CustomSlideTransition(
                      beginOffset: Offset(0, 1),
                      endOffset: Offset(0, 0),
                      child: const GetInTouchView()),
                  const CustomSpace(
                    height: 20,
                  ),
                  CustomSlideTransition(
                      beginOffset: Offset(1, 0),
                      endOffset: Offset(0, 0),
                      child: ContactForm()),
                ])
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Expanded(
                        flex: 3,
                        child: CustomSlideTransition(
                            beginOffset: Offset(0, 1),
                            endOffset: Offset(0, 0),
                            child: GetInTouchView())),
                    Expanded(
                      flex: 5,
                      child: CustomSlideTransition(
                        child: ContactForm(),
                        beginOffset: Offset(1, 0),
                        endOffset: Offset(0, 0),
                      ),
                    ),
                  ],
                ),
        ),
        const CustomSpace(
          height: 20,
        ),
        Container(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          color: AppColors.greyDarkColor,
          child: Column(
            children: const [
              CustomFadeTransition(child: SocialMediaIconSection()),
              CustomFadeTransition(
                child: TitleText(
                  text: Constants.copyrighttext,
                  textAlign: TextAlign.center,
                  fontSize: 12,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
