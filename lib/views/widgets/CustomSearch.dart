// ignore_for_file: file_names

import 'package:flutter/material.dart';

class CustomSearch extends StatelessWidget {
  const CustomSearch({super.key,  required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(color: Colors.black.withOpacity(0.2),
      borderRadius: BorderRadius.circular(16)
      ),
      child:  Center(child: Icon(icon,size: 30,)),
    );
  }
}