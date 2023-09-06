//----------------------TEXT FIELD WIDGET -------------------

import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;
  final String? hint;
  final bool obstext;
  final bool isSuffix;
  final Icon? suffixIcon;
  final TextEditingController? mycontroller;
  const TextFieldWidget({
    super.key,
    required this.title,
    this.mycontroller,
    this.hint,
    this.obstext = false,
    this.suffixIcon,
    this.isSuffix = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      obscureText: obstext,
      controller: mycontroller,
      decoration: InputDecoration(
          // prefixIcon: Icon(myicon),
          suffixIconColor: Colors.grey,
          suffixIcon: isSuffix == true
              ? const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(Icons.remove_red_eye),
                )
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
    );
  }
}
