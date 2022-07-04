import 'package:flutter/material.dart';
import 'package:flutter_task/controller/login_controller.dart';
import 'package:flutter_task/helper/app_constants.dart';
import 'package:flutter_task/helper/images.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Scaffold(
      backgroundColor: AppConstants.whiteColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Lottie.asset(Images.welcome),
          SizedBox(
            width: AppConstants.width * 0.5,
            child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: AppConstants.mainColor,
                ),
                onPressed: () {
                  controller.signInWithFacebook();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Icon(Icons.facebook, color: AppConstants.whiteColor),
                    Text(
                      "login with facebook",
                      style: TextStyle(color: AppConstants.whiteColor),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}
