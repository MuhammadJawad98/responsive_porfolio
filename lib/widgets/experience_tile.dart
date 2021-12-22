import 'package:flutter/material.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/widgets/title_text.dart';

import 'custom_text.dart';

class ExperienceTile extends StatefulWidget {
  const ExperienceTile({
    Key? key,required this.title,required this.text, this.isLast=false,
  }) : super(key: key);
final String title;
final String text;
final bool isLast;
  @override
  _ExperienceTileState createState() => _ExperienceTileState();
}

class _ExperienceTileState extends State<ExperienceTile> {
  bool isHovered = false;

  hoverActivation(hoverState) {
    setState(() {
      isHovered = hoverState;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        hoverActivation(true);
      },
      onExit: (event) {
        hoverActivation(false);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           TitleText(text: widget.title),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 3,
                        color: AppColors.greenColor,
                      ),
                    ),
                    child: isHovered
                        ? Center(
                            child: Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.greenColor,
                            ),
                          ))
                        : null,
                  ),
                  const SizedBox(height: 20),
                if(!widget.isLast) Container(
                    width: 5,
                    height: 150,
                    color: AppColors.greenColor,
                  ),
                  const SizedBox(height: 20),
                ],
              )),
           Expanded(flex: 3, child: CustomText(text: widget.text)),
        ],
      ),
    );
  }
}
