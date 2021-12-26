import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CustomRoundButton extends StatefulWidget {
  CustomRoundButton(
      {Key? key,
      required this.text,
      required this.onPress,
      this.textSize = 18.0,
      this.buttonColor = AppColors.greyColor,
      this.textColor = AppColors.whiteColor,
      this.isRounded = true,
      this.isActive = false,
      this.width = double.infinity,
      this.height = 48.0,
      this.elevation = 0,
      this.roundCornersRadius = 30.0})
      : super(key: key);
  final String text;
  final VoidCallback? onPress;
  final double textSize;
  Color buttonColor;
  Color textColor;
  final bool isRounded;
  final double width;
  final double height;
  final double elevation;
  final double roundCornersRadius;
  final bool isActive;

  @override
  State<CustomRoundButton> createState() => _CustomRoundButtonState();
}

class _CustomRoundButtonState extends State<CustomRoundButton> {
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: widget.onPress,
          onHover: (isHover) {
            if (isHover) {
              setState(() {
                widget.buttonColor = AppColors.whiteColor;
                widget.textColor = AppColors.greenColor;
              });
            } else {
              setState(() {
                if(widget.isActive){
                  widget.buttonColor = AppColors.greenColor;
                  widget.textColor = AppColors.whiteColor;
                }else{
                  widget.buttonColor = AppColors.greyColor;
                  widget.textColor = AppColors.whiteColor;
                }

              });
            }
          },
          style: ElevatedButton.styleFrom(
            primary: widget.buttonColor,
            onPrimary: widget.textColor,
            textStyle: TextStyle(
              fontSize: widget.textSize,
            ),
            elevation: widget.elevation,
            minimumSize: Size(widget.width, widget.height),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  widget.isRounded ? widget.roundCornersRadius : 0),
            ),
          ),
          child: Text(widget.text)),
    );
  }
}
