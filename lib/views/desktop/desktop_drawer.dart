import 'package:flutter/material.dart';
import '../../utils/colors.dart';
import '../../widgets/custom_text.dart';
import '../../widgets/title_text.dart';

class DesktopDrawer extends StatelessWidget {
  const DesktopDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(left: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Text(
                  '01',
                  style: TextStyle(
                      color: AppColors.greenColor, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                width: 100,
                height: 5,
                color: AppColors.whiteColor,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  '06',
                  style: TextStyle(
                      color: AppColors.whiteColor, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50.0,
          ),
          const TitleText(
            text: 'Name',
          ),
          const CustomText(text: 'Muhammad Jawad'),
          const TitleText(
            text: 'Role',
          ),
          const CustomText(text: 'Flutter developer'),
          const TitleText(
            text: 'Email',
          ),
          const CustomText(text: 'rana.jawad98@gmail.com'),
          const TitleText(
            text: 'Phone',
          ),
          const CustomText(text: '+92 3024043814'),
        ],
      ),
    );
  }
}
