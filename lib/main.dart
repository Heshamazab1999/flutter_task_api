import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_task/helper/cash_helper.dart';
import 'package:flutter_task/helper/dio_integration.dart';
import 'package:flutter_task/routes/app_route.dart';
import 'package:flutter_task/routes/app_screens.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await CacheHelper.init();
  DioUtilNew.getInstance();
  var token = CacheHelper.getData(key: "facebookToken");
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: token == null ? AppRoute.splash : AppRoute.home,
    getPages: AppScreens.screens,
  ));
}
