import 'package:car_store/ui/screens/screens.dart';
import 'package:car_store/ui/theme/app_colors.dart';
import 'package:car_store/ui/theme/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  static const String route = '/splash';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushNamedAndRemoveUntil(NavigationScreen.route, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: AppColors.primary,
        child: SvgPicture.asset(
          AppIcons.addChat,
          color: AppColors.background,
          height: 128.0,
          width: 128.0,
        ),
      ),
    );
  }
}
