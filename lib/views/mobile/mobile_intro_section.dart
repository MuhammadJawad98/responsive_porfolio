import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../utils/common_functions.dart';
import '../../utils/constants.dart';
import '../../views/desktop/details_section.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_space.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/title_text.dart';

class MobileIntroSection extends StatelessWidget {
  const MobileIntroSection({Key? key, required this.scrollController})
      : super(key: key);
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return Column(
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
        Row(
          children: [
            const Expanded(
              child: CustomText(text: Constants.introDescription),
            ),
            Expanded(child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: CachedNetworkImage(imageUrl: Constants.dummyImage))),
          ],
        ),
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
                  scrollController.position.pixels + 200,
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
        ),
      ],
    );
  }
}
