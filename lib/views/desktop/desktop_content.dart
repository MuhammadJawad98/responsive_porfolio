import 'package:flutter/material.dart';
import 'package:portfolio/views/desktop/introduction.dart';

class DesktopContent extends StatelessWidget {
  const DesktopContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: IntroductionSection());
  }
}
