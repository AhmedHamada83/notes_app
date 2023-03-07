import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextFiled extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomTextFiled({ required this.hint,  this.maxLines});

  final String hint;
  final int? maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kpimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kpimaryColor),
        border: OutLine(),
        enabledBorder: OutLine(),
        focusedBorder: OutLine(kpimaryColor),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  OutlineInputBorder OutLine([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
