// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'CustomSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({ required this.text, required this.icon});

  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text ,
          
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
         CustomSearch(icon: icon,),
      ],
    );
  }
}


