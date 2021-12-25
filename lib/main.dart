import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/routes/route_generator.dart';
import 'package:portfolio/routes/routes.dart';
import 'package:portfolio/utils/colors.dart';
import 'package:portfolio/utils/responsive.dart';
import 'package:portfolio/views/desktop/desktop_content.dart';
import 'package:portfolio/views/desktop/desktop_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: RoutesName.dashboard,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),),
      home: const MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
    return Scaffold(
      key: _key,
      drawer:const Drawer(
        backgroundColor: AppColors.greenColor,
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: AppColors.transparentColor,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: AppColors.whiteColor),
          // set your color here
          onPressed: () {
            _key.currentState!.openDrawer();
          },
        ),
      ),
      body: Responsive(
        // Let's work on our mobile part
        mobile: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.amber,
        ),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: AppColors.greyColor,
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: AppColors.whiteColor,
              ),
            ),
          ],
        ),
        desktop: Row(
          children: [
            Expanded(
                flex: _size.width > 1340 ? 2 : 4,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: AppColors.greyDarkColor,
                  padding: const EdgeInsets.only(top: 150.0),
                  child: const DesktopDrawer(),
                )),
            Expanded(
              flex: _size.width > 1340 ? 8 : 10,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                color: AppColors.whiteColor,
                child: const DesktopContent(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
