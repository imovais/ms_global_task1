import 'dart:async';

import 'package:get/get.dart';
import 'package:ms_global_task1/Screens/Login/login_view.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const LoginScreen());
    });
  }
}
