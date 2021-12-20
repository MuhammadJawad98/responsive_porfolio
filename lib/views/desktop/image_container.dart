import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/widgets/custom_button.dart';
import 'package:portfolio/widgets/title_text.dart';

class ImageContainer extends StatelessWidget {
  const ImageContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height,
      decoration: BoxDecoration(
        image: DecorationImage(
          colorFilter:  ColorFilter.mode(AppColors.greyColor.withOpacity(0.7), BlendMode.dstATop),
          image: const NetworkImage(Constants.bgImage),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: 500,
              height: size.height - 200,
              child: Image.network(
                Constants.userImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 250,
            top: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomRoundButton(
                  text: 'My Blog',
                  onPress: () {},
                  width: 140,
                  height: 60,
                ),
                CustomRoundButton(
                  text: 'Contact Me',
                  onPress: () {},
                  width: 180,
                  height: 60,
                ),
                CustomRoundButton(
                  text: 'Download CV',
                  onPress: () {},
                  width: 220,
                  height: 60,
                  buttonColor: AppColors.greenColor,
                  isActive: true,
                ),
                CustomRoundButton(
                  text: 'Check My Portfolio',
                  onPress: () {},
                  width: 250,
                  height: 60,
                ),
              ],
            ),
          ),
          const Positioned(
            right: 280,
            top: 500,
            child: LimitedBox(
                maxWidth: 250,
                child: TitleText(
                  text: 'Hello I’m Jacob Hawkins',
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                )),
          )
        ],
      ) /* add child content here */,
    );
  }
}
