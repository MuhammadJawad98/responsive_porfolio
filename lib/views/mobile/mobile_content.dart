import 'package:flutter/material.dart';

import '../../utils/colors.dart';
import '../../utils/common_functions.dart';
import '../../views/desktop/desktop_content.dart';

class MobileContent extends StatelessWidget {
  const MobileContent({Key? key, required this.scrollController})
      : super(key: key);
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    // final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
    // var height = MediaQuery.of(context).size.height;
    return Scaffold(
      // key: _key,
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   backgroundColor: AppColors.transparentColor,
      //   elevation: 0.0,
      //   leading: IconButton(
      //     icon: const Icon(Icons.menu, color: AppColors.whiteColor),
      //     // set your color here
      //     onPressed: () {
      //       _key.currentState!.openDrawer();
      //     },
      //   ),
      // ),
      // drawer: Drawer(
      //   backgroundColor: AppColors.greenColor,
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       DrawerItem(
      //         text: 'Home',
      //         onTap: () {
      //           // scrollToItem(1, height, context);
      //           scrollController.animateTo(
      //             scrollController.position.minScrollExtent,
      //             curve: Curves.easeOut,
      //             duration: const Duration(milliseconds: 300),
      //           );
      //           closeDrawer(context);
      //         },
      //       ),
      //       DrawerItem(
      //         text: 'Introduction',
      //         onTap: () {
      //           scrollToItem(1, height, context);
      //         },
      //       ),
      //       DrawerItem(
      //         text: 'Projects',
      //         onTap: () {
      //           scrollToItem(2.6, height, context);
      //         },
      //       ),
      //       DrawerItem(
      //         text: 'Experience',
      //         onTap: () {
      //           scrollToItem(8.9, height, context);
      //         },
      //       ),
      //       DrawerItem(
      //         text: 'Skills',
      //         onTap: () {
      //           scrollToItem(10.8, height, context);
      //         }
      //       ),
      //       DrawerItem(
      //         text: 'Project Highlights',
      //         onTap: () {
      //           scrollToItem(11.5, height, context);
      //         },
      //       ),
      //       DrawerItem(
      //         text: 'Contact Me',
      //         onTap: () {
      //           scrollController.animateTo(
      //             scrollController.position.maxScrollExtent,
      //             curve: Curves.easeOut,
      //             duration: const Duration(milliseconds: 300),
      //           );
      //           closeDrawer(context);
      //           // scrollToItem(12.2, height, context);
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(8.0),
          color: AppColors.greyColor,
          child: DesktopContent(
            scrollController: scrollController,
          )
      ),
    );
  }

  void scrollToItem(index, height, context) {
    // scrollController.animateTo(
    //   scrollController.position.minScrollExtent + (height * index),
    //   curve: Curves.easeOut,
    //   duration: const Duration(milliseconds: 300),
    // );
    closeDrawer(context);
  }
}
