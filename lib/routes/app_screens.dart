import 'package:flutter_task/routes/app_route.dart';
import 'package:flutter_task/screens/home_screen.dart';
import 'package:get/get.dart';

class AppScreens {
  static final screens = [
    GetPage(name: AppRoute.home, page: () => const HomeScreen()),
  ];
}
