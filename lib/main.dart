import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../routes/route_generator.dart';
import '../routes/routes.dart';
import '../utils/colors.dart';
import '../utils/responsive.dart';
import '../views/desktop/desktop_drawer.dart';
import '../views/desktop/introduction.dart';
import 'controllers/contact_form_controller.dart';

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
      initialRoute: RoutesName.loadingScreen,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  void goToMainPage() {
    Future.delayed(const Duration(seconds: 5), () {
      Get.toNamed(
        RoutesName.portfolio,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    goToMainPage();
    return Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColors.greenColor,
        child: const Center(
            child: CircularProgressIndicator(
          color: AppColors.whiteColor,
        )));
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    final GlobalKey<ScaffoldState> _key = GlobalKey(); // Create a key
    return GetBuilder<ContactFormController>(
        init: ContactFormController(),
        builder: (_) {
          return Title(
            title: 'Muhammad Jawad',
            color: AppColors.greenColor, // This is required
            child: Scaffold(
              key: _key,
              drawer: const Drawer(
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
                          padding: const EdgeInsets.all(8.0),
                          color: AppColors.greyColor,
                          child: const IntroductionSection()),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
