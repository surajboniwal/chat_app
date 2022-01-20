import 'package:car_store/ui/screens/chat/chat_screen.dart';
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

      case ChatScreen.route:
        page = ChatScreen();
        break;

      default:
        page = Container(
          alignment: Alignment.center,
          child: Text('Maybe you\'ve lost your way.'),
        );
    }

    return PageRouteBuilder(
      pageBuilder: (context, one, second) => page,
      transitionDuration: Duration(milliseconds: 200),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          child: child,
          position: Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0)).animate(animation),
        );
      },
    );
  }
}
