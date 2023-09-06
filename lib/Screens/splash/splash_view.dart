import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ms_global_task1/Screens/splash/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController());
    return Scaffold(
      body: Container(
          color: Colors.white,
          child: Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width / 3,
                child: Image.asset('images/logo.jpeg')),
          )),
    );
  }
}
