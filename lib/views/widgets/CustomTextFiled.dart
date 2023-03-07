// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextFiled extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const CustomTextFiled({ required this.hint,  this.maxLines, this.onSaved});

  final String hint;
  final int? maxLines;
  final Function(String?)? onSaved;
  
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
  if (value?.isEmpty ?? true) {
    return 'Field is requared';
  } else {
    return null;
  }
      },
      maxLines: maxLines,
      cursorColor: kpimaryColor,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:const TextStyle(color: kpimaryColor),
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
