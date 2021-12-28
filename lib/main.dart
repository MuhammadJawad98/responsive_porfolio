import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/views/mobile/mobile_content.dart';
import '../routes/route_generator.dart';
import '../routes/routes.dart';
import '../utils/colors.dart';
import '../utils/responsive.dart';
import '../views/desktop/desktop_drawer.dart';
import '../views/desktop/desktop_content.dart';

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
          Theme
              .of(context)
              .textTheme,
        ),
      ),
      home: const LoadingScreen(),
    );
  }
}

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void goToMainPage() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(
        RoutesName.portfolio,
      );
    });
  }
  @override
  void initState() {
    // TODO: implement initState
    goToMainPage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

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
    final scrollController = ScrollController(initialScrollOffset: 0);

    return Title(
      title: 'Muhammad Jawad',
      color: AppColors.greenColor, // This is required
      child: Scaffold(
        body: Responsive(
          // Let's work on our mobile part
          mobile:  MobileContent(scrollController: scrollController,),
          tablet: Row(
            children: [
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: AppColors.greyDarkColor,
                  padding: const EdgeInsets.only(top: 150.0),
                  child: const DesktopDrawer(),
                ),
              ),
              Expanded(
                flex: 9,
                child: Container(
                    width: double.infinity,
                    // padding: const EdgeInsets.all(8.0),
                    color: AppColors.greyColor,
                    child:  DesktopContent(scrollController: scrollController,)),
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
                    // padding: const EdgeInsets.all(8.0),
                    color:  AppColors.greyColor,
                    child: DesktopContent(scrollController: scrollController,)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
