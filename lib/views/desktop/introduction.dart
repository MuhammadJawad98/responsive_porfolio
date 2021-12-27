import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:portfolio/widgets/social_media_icon.dart';
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

class IntroductionSection extends StatelessWidget {
  const IntroductionSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final scrollController = ScrollController(initialScrollOffset: 0);
    CarouselController buttonCarouselController = CarouselController();
    final height = MediaQuery.of(context).size.height;
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
          // const CustomSpace(
          //   height: 80,
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Expanded(
              //   flex: 3,
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Row(
              //         children: const [
              //           Expanded(
              //               child: IntroTile(
              //                   iconPath: Constants.iconDesign,
              //                   heading: 'Design',
              //                   text:
              //                   'A full stack allaround designer that may or may not include a guide for specific creative people')),
              //           Expanded(
              //               child: IntroTile(
              //                   iconPath: Constants.iconDevelop,
              //                   heading: 'Develop',
              //                   text:
              //                   'A full stack allaround designer that may or may not include a guide for specific creative people')),
              //         ],
              //       ),
              //       Row(
              //         children: const [
              //           Expanded(
              //               child: IntroTile(
              //                   iconPath: Constants.iconPromote,
              //                   heading: 'Promote',
              //                   text:
              //                   'A full stack allaround designer that may or may not include a guide for specific creative people')),
              //           Expanded(
              //               child: IntroTile(
              //                   iconPath: Constants.iconWrite,
              //                   heading: 'Write',
              //                   text:
              //                   'A full stack allaround designer that may or may not include a guide for specific creative people')),
              //         ],
              //       ),
              //     ],
              //   ),
              // ),
              Expanded(
                // flex: 2,
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
                    const IntroTextRow(
                        title: 'BIRTHDAY :', text: '14. 01. 1998'),
                    const IntroTextRow(
                        title: 'INTEREST:', text: 'Music, Gaming, Tech'),
                    const IntroTextRow(
                        title: 'EMAIL :', text: 'rana.jawad98@gmail.com'),
                    const IntroTextRow(
                        title: 'WEBSITE :', text: 'www.yourwebsite.com'),
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
                  child: CachedNetworkImage(
                imageUrl:
                    'https://images.unsplash.com/photo-1534665482403-a909d0d97c67?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGNvZGluZ3xlbnwwfDB8MHx8&auto=format&fit=crop&w=400&q=60',
              )),
            ],
          ),
          const CustomSpace(
            height: 80,
          ),
          GridView.builder(
            itemCount: Constants.projectData.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: Get.width > 1600 ? 3 : 2,
              mainAxisExtent: 800,
            ),
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
              ExperienceTile(
                title: '2020',
                text: Constants.nifftyDesc,
              ),
              ExperienceTile(title: '2020', text: Constants.neighbourhubDesc),
              ExperienceTile(title: '2021', text: Constants.gearsUnlimitedDesc),
              ExperienceTile(title: '2021', text: Constants.facebookDesc),
              ExperienceTile(title: '2021', text: Constants.popeyeDesc),
              ExperienceTile(title: '2021', text: Constants.ablohDesc),
              ExperienceTile(
                  title: '2021', text: Constants.mizdahDesc, isLast: true),
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
          Padding(
            padding: const EdgeInsets.only(left:20.0,right:20.0),
            child: GridView.builder(
              itemCount: Constants.skills.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Get.width > 1550 ? 3 : 2,
                // crossAxisSpacing: 4.0,
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
          const TitleText(
            text: 'Project Highlights',
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
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
                      decoration: const BoxDecoration(color: Colors.amber),
                      child: Image.network(item.imageUrl),);
                },
              );
            }).toList(),
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
          Wrap(
              direction: Axis.horizontal,
              children:[
                SocialMediaIcon(icon: Entypo.mobile,text:'Phone',iconColor: AppColors.blackColor,onTap: (){},),
                SocialMediaIcon(icon: AntDesign.instagram,text:'Instagram',iconColor: AppColors.instaColor,onTap: (){},),
                SocialMediaIcon(icon: Entypo.youtube,text:'Youtube',iconColor: AppColors.youtubeColor,onTap: (){},),
                SocialMediaIcon(icon: EvilIcons.sc_facebook,text:'Facebook',iconColor: AppColors.fbColor,onTap: (){},),
                SocialMediaIcon(icon: Entypo.twitter,text:'Twitter',iconColor: AppColors.twitterColor,onTap: (){},),
                SocialMediaIcon(icon: Entypo.linkedin,text:'Linkedin',iconColor: AppColors.linkedinColor,onTap: (){},),
          ]),
        ],
      ),
    );
  }
}
