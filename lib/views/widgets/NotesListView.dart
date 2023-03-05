import 'package:flutter/material.dart';

import 'ItemView.dart';

class ItemBuilder extends StatelessWidget {
  const ItemBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: ((context, index) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 4),
        child:  ItemView(),
      );
    }));
  }
}