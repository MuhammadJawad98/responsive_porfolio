import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_strategy/url_strategy.dart';

import '../controllers/home_controller.dart';
import '../routes/route_generator.dart';
import '../routes/routes.dart';
import '../utils/colors.dart';
import '../utils/responsive.dart';
import '../views/desktop/desktop_content.dart';
import '../views/desktop/desktop_drawer.dart';
import '../views/mobile/mobile_content.dart';
import '../widgets/custom_fade_transition.dart';
import '../widgets/custom_text.dart';
import 'firebase_options.dart';

void main() async {
  // Here we set the URL strategy for our web app.
  // It is safe to call this function when running on mobile or desktop as well.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setPathUrlStrategy();
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
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Init.instance.initialize(),
        builder: (context, AsyncSnapshot snapshot) {
          // Show splash screen while waiting for app resources to load:
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Splash();
          } else {
            // Loading is done, return the app:
            return const MainScreen();
          }
        });
  }
}

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bool lightMode = MediaQuery.of(context).platformBrightness == Brightness.light;
    return Scaffold(
        backgroundColor: AppColors.greenColor,
        // lightMode ?  AppColors.greenColor : const Color(0xff042a49),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icon.png'),
              CustomFadeTransition(
                  child: CustomText(
                text: 'Muhammad Jawad',
                fontSize: 25,
              ))
            ],
          ),
        ));
  }
}

class Init {
  Init._();

  static final instance = Init._();

  Future initialize() async {
    Get.put(HomeController());
    // This is where you can initialize the resources needed by your app while
    // the splash screen is displayed.  Remove the following example because
    // delaying the user experience is a bad design practice!
    await Future.delayed(const Duration(seconds: 3));
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
    return GetBuilder<HomeController>(
        init: HomeController(),
        builder: (_) {
          return Title(
            title: 'Muhammad Jawad',
            color: AppColors.greenColor, // This is required
            child: Scaffold(
              body: Responsive(
                // Let's work on our mobile part
                mobile: MobileContent(
                  scrollController: scrollController,
                ),
                tablet: Row(
                  children: [
                    Expanded(
                      flex: 5,
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        color: AppColors.greyDarkColor,
                        padding: const EdgeInsets.only(top: 150.0),
                        child:
                            CustomFadeTransition(child: const DesktopDrawer()),
                      ),
                    ),
                    Expanded(
                      flex: 9,
                      child: Container(
                          width: double.infinity,
                          // padding: const EdgeInsets.all(8.0),
                          color: AppColors.greyColor,
                          child: DesktopContent(
                            scrollController: scrollController,
                          )),
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
                          child: CustomFadeTransition(
                              child: const DesktopDrawer()),
                        )),
                    Expanded(
                      flex: _size.width > 1340 ? 8 : 10,
                      child: Container(
                          width: double.infinity,
                          // padding: const EdgeInsets.all(8.0),
                          color: AppColors.greyColor,
                          child: DesktopContent(
                            scrollController: scrollController,
                          )),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
