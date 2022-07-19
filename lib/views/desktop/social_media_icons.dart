import 'package:flutter/material.dart';

import '../../utils/common_functions.dart';
import '../../utils/constants.dart';
import '../../widgets/social_media_icon.dart';

class SocialMediaIconSection extends StatelessWidget {
  const SocialMediaIconSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.center,
          children: Constants.socialMediaList
              .map((item) => SocialMediaIcon(
                  icon: item.icon,
                  text: item.text,
                  iconColor: item.iconColor,
                  onTap: () {
                    launchURL(item.url);
                  }))
              .toList()),
    );
  }
}
