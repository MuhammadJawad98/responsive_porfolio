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
    return Container(
      width: 200,
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: CircleAvatar(
              radius: 45,
              backgroundColor: AppColors.whiteColor,
              child: Icon(
                icon,
                color: iconColor,
                size: 40,
              ),
            ),
          ),
          CustomText(text: text),
        ],
      ),
    );
  }
}
