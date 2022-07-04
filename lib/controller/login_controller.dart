import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_task/controller/base_controller.dart';
import 'package:flutter_task/helper/cash_helper.dart';
import 'package:flutter_task/routes/app_route.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  Future<UserCredential> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();
    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.token);
    print(loginResult.accessToken!.token);
    CacheHelper.saveData(
        key: 'facebookToken', value: loginResult.accessToken!.token);
    Get.toNamed(AppRoute.home);
    return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
  }
}
