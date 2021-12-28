import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/custom_text.dart';

class SocialMediaIcon extends StatelessWidget {
  const SocialMediaIcon({Key? key, required this.icon, required this.text,required this.iconColor,required this.onTap})
      : super(key: key);
  final IconData icon;
  final String text;
  final Color iconColor;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.whiteColor,
            child: Icon(
              icon,
              color: iconColor,
              size: 25,
            ),
          ),
        ),
        CustomText(text: text),
      ],
    );
  }
}
