import 'package:flutter/material.dart';
import 'package:get/get_utils/src/get_utils/get_utils.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/constants.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.textInputType = TextInputType.text,
    this.maxLines = 1,
    required this.fieldType,
  }) : super(key: key);
  final TextEditingController controller;
  final String hintText;
  final TextInputType textInputType;
  final int maxLines;
  final int fieldType;

  @override
  Widget build(BuildContext context) {
    var style = const UnderlineInputBorder(
      borderSide: BorderSide(color: AppColors.whiteColor, width: 2),
    );
    return Padding(
        padding: const EdgeInsets.only(
          top: 20.0,
        ),
        child: TextFormField(
            controller: controller,
            keyboardType: textInputType,
            maxLines: maxLines,
            style: const TextStyle(color: AppColors.whiteColor),
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: const TextStyle(color: AppColors.whiteColor),
              enabledBorder: style,
              focusedBorder: style,
            ),
            validator: (val) {
              switch (fieldType) {
                case Constants.emailField:
                  {
                    if (val!.isEmpty) {
                      return "Please enter email";
                    } else if (!GetUtils.isEmail(val)) {
                      return "Please enter valid email";
                    } else {
                      return null;
                    }
                  }
                case Constants.nameField:
                  {
                    if (val!.isEmpty) {
                      return "Please enter your name";
                    } else {
                      return null;
                    }
                  }
                case Constants.subjectField:
                  {
                    if (val!.isEmpty) {
                      return "Please enter subject";
                    } else {
                      return null;
                    }
                  }
                case Constants.messageField:
                  {
                    if (val!.isEmpty) {
                      return "Please enter your message";
                    } else {
                      return null;
                    }
                  }
                default:
                  {}
              }
            }));
  }
}
