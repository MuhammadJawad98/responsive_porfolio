import 'package:flutter/material.dart';

import 'custom_text.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({Key? key, required this.text, required this.onTap})
      : super(key: key);
  final String text;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: CustomText(text: text, fontSize: 20,),
    );
  }
}
