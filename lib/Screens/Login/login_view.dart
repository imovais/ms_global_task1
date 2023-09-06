import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ms_global_task1/Screens/Home/home_view.dart';

import '../../common_widget/text_field.dart';
import '../../constants/colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(size.width / 9.9),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: size.width / 2, child: Image.asset('images/logo.jpeg')),
            const SizedBox(
              height: 20,
            ),
            const Column(
              children: [
                TextFieldWidget(title: "Email"),
                SizedBox(
                  height: 10,
                ),
                TextFieldWidget(
                  obstext: true,
                  title: "Password",
                  isSuffix: true,
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () => Get.offAll(HomeView()),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: AppColors.primary),
                child: const Center(
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
