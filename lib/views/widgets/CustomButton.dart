// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.isLoading=false});

  final Function()?onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: kpimaryColor, borderRadius: BorderRadius.circular(16)),
        width: MediaQuery.of(context).size.width,
        height: 50,
        child:  Center(
          child:  isLoading ?const SizedBox(
            height: 20,
            width: 20,
            child:  CircularProgressIndicator(color: Colors.black ,)): const Text(

            'Add',
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
