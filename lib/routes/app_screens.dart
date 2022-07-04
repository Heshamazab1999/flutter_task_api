import 'package:flutter_task/routes/app_route.dart';
import 'package:flutter_task/screens/home_screen.dart';
import 'package:flutter_task/screens/login_screen.dart';
import 'package:flutter_task/screens/splash_screen.dart';
import 'package:get/get.dart';

class AppScreens {
  static final screens = [
    GetPage(name: AppRoute.home, page: () => const HomeScreen()),
    GetPage(name: AppRoute.login, page: () => const LoginScreen()),
    GetPage(name: AppRoute.splash, page: () => const Splash()),
  ];
}
