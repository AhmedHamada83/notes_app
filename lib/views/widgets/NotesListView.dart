// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'ItemView.dart';

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: ((context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 4),
          child:  ItemView(),
        );
      })),
    );
  }
}