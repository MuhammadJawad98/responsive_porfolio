import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';
import 'package:portfolio/views/desktop/introduction.dart';

import 'image_container.dart';

class DesktopContent extends StatelessWidget {
  const DesktopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children:  [
          // const ImageContainer(),
         const IntroductionSection(),
          // Container(width: 100,height: 500,color: AppColors.greenColor,),
        ],
      ),
    );
  }
}
