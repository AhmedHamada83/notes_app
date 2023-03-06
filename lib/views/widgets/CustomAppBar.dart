// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'CustomSearch.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
          'Notes',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomSearch(),
      ],
    );
  }
}


