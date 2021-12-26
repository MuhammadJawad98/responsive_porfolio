import 'package:flutter/material.dart';
import '../main.dart';
import '../routes/routes.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.loadingScreen:
        return _GeneratePageRoute(
            widget: const LoadingScreen(), routeName: settings.name.toString());
      case RoutesName.portfolio:
        return _GeneratePageRoute(
            widget: const MainScreen(), routeName: settings.name.toString());
      default:
        return _GeneratePageRoute(
            widget: const LoadingScreen(), routeName: settings.name.toString());
    }
  }
}

class _GeneratePageRoute extends PageRouteBuilder {
  final Widget widget;
  final String routeName;

  _GeneratePageRoute({required this.widget, required this.routeName})
      : super(
            settings: RouteSettings(name: routeName),
            pageBuilder: (BuildContext context, Animation<double> animation,
                Animation<double> secondaryAnimation) {
              return widget;
            },
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secondaryAnimation,
                Widget child) {
              return SlideTransition(
                textDirection: TextDirection.rtl,
                position: Tween<Offset>(
                  begin: const Offset(1.0, 0.0),
                  end: Offset.zero,
                ).animate(animation),
                child: child,
              );
            });
}
