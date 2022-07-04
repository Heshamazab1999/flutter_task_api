import 'package:flutter/material.dart';
import 'package:flutter_task/helper/app_constants.dart';
import 'package:flutter_task/helper/images.dart';
import 'package:flutter_task/screens/login_screen.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen(
          useLoader: false,
          seconds: 2,
          navigateAfterSeconds: const LoginScreen(),
          photoSize: 80,
          image: Image.asset(
            Images.logo,
          )),
      backgroundColor: AppConstants.whiteColor,
    );
  }
}
