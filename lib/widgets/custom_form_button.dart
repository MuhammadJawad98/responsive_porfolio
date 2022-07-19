import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../widgets/custom_text.dart';
class CustomFormButton extends StatelessWidget {
  const CustomFormButton({Key? key,required this.onTap}) : super(key: key);
final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(15.0),
        child: const Center(child: CustomText(text:'S E N D',)),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.whiteColor,width: 2),

        ),
      ),
    );
  }
}
