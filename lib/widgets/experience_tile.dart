import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../widgets/title_text.dart';

import 'custom_text.dart';

class ExperienceTile extends StatefulWidget {
  const ExperienceTile({
    Key? key,
    required this.title,
    required this.text,
    this.isLast = false,
  }) : super(key: key);
  final String title;
  final String text;
  final bool isLast;

  @override
  _ExperienceTileState createState() => _ExperienceTileState();
}

class _ExperienceTileState extends State<ExperienceTile> {
  bool isHovered = false;
  final nonHoverTransform = Matrix4.identity();
  final hoverTransform = Matrix4.identity()..translate(-10, 0, 0);

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
          SizedBox(
            width: 100,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              child: TitleText(
                text: widget.title,
              ),
              transform: isHovered ? hoverTransform : nonHoverTransform,
            ),
          ),
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
                  if (!widget.isLast)
                    Container(
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
