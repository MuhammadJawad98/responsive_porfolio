import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/views/desktop/details_section.dart';
import 'package:portfolio/views/desktop/social_media_icons.dart';
import 'package:portfolio/views/mobile/mobile_intro_section.dart';
import 'package:portfolio/views/mobile/mobile_top_section.dart';
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
  const DesktopContent({Key? key, required this.scrollController})
      : super(key: key);
  final ScrollController scrollController;

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
                      text: Constants.hiIAmJawadText,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: Constants.buildValueText,
                      fontSize: 35,
                    ),
                    CustomText(
                      text: Constants.buildProductText,
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
            child:size.width<1100 ? MobileIntroSection(scrollController: scrollController) : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
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
                      const CustomText(
                        text:Constants.introDescription),
                      const CustomSpace(height: 50,),
                      const DetailsSection(),
                      const CustomSpace(height: 30,),
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
                  text: Constants.experience,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
                ExperienceTile(
                  title: Constants.text2020,
                  text: Constants.nifftyDesc,
                ),
                ExperienceTile(
                    title: Constants.text2020,
                    text: Constants.neighbourhubDesc),
                ExperienceTile(
                    title: Constants.text2021,
                    text: Constants.gearsUnlimitedDesc),
                ExperienceTile(
                    title: Constants.text2021, text: Constants.facebookDesc),
                ExperienceTile(
                    title: Constants.text2021, text: Constants.popeyeDesc),
                ExperienceTile(
                    title: Constants.text2021, text: Constants.ablohDesc),
                ExperienceTile(
                    title: Constants.text2021,
                    text: Constants.mizdahDesc,
                    isLast: true),
              ],
            ),
          ),
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
            items: Constants.projectData.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
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
            child: size.width < 1100
                ? Column(children: const [
                    GetInTouchView(),
                    CustomSpace(
                      height: 20,
                    ),
                    ContactForm(),
                  ])
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Expanded(flex: 3, child: GetInTouchView()),
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
              children: const [
                SocialMediaIconSection(),
                TitleText(
                  text: Constants.copyrighttext,
                  textAlign: TextAlign.center,
                  fontSize: 12,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
