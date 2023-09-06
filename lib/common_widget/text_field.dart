//----------------------TEXT FIELD WIDGET -------------------

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ms_global_task1/Screens/Login/login_controller.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;
  final String? hint;
  final bool obstext;
  final bool isSuffix;
  final Icon? suffixIcon;
  final TextEditingController? mycontroller;
  TextFieldWidget({
    super.key,
    required this.title,
    this.mycontroller,
    this.hint,
    this.obstext = false,
    this.suffixIcon,
    this.isSuffix = false,
  });

  final LoginController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => TextField(
          keyboardType: TextInputType.emailAddress,
          obscureText: c.passview.isTrue ? obstext : false,
          controller: mycontroller,
          decoration: InputDecoration(
              // prefixIcon: Icon(myicon),
              suffixIconColor: Colors.grey,
              suffixIcon: isSuffix == true
                  ? Padding(
                      padding: const EdgeInsets.only(right: 1),
                      child: IconButton(
                        onPressed: () => c.showpass(),
                        icon: const Icon(Icons.remove_red_eye),
                      ))
                  : null,
              hintText: title,
              hintStyle: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
              fillColor: Colors.grey.shade100,
              filled: true,
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade300),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade400),
                  borderRadius: const BorderRadius.all(Radius.circular(10)))),
        ));
  }
}
