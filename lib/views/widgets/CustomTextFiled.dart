import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KpimaryColor,
      decoration: InputDecoration(
        hintText: 'text',
        hintStyle: TextStyle(color: KpimaryColor),
        border: OutLine(),
        enabledBorder: OutLine(),
        focusedBorder: OutLine(KpimaryColor),
        ),
      );
  }

  OutlineInputBorder OutLine([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(
          color:color?? Colors.white,
          )  ,
      );
  }
}
