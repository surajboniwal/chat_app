import 'package:car_store/ui/screens/screens.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static String? latestRoute;
  static Route<dynamic> generateRoute(RouteSettings settings) {
    latestRoute = settings.name;
    Widget page;
    switch (settings.name) {
      case SplashScreen.route:
        page = SplashScreen();
        break;
      case NavigationScreen.route:
        page = NavigationScreen();
        break;

      default:
        page = Container(
          alignment: Alignment.center,
          child: Text('Maybe you\'ve lost your way.'),
        );
    }

    return MaterialPageRoute(builder: (context) => page);
  }
}
