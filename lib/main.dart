import 'package:flutter/material.dart';
import 'package:flutter_task/helper/dio_integration.dart';
import 'package:flutter_task/routes/app_route.dart';
import 'package:flutter_task/routes/app_screens.dart';
import 'package:get/get.dart';

Future<void> main() async {
  DioUtilNew.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.home,
      getPages: AppScreens.screens,
    );
  }
}
