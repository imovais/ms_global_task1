import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:ms_global_task1/Screens/Home/home_view.dart';
import 'package:ms_global_task1/Screens/splash/splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //home: SplashScreen(),
      home: HomeView(),
    );
  }
}
