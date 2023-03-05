import 'package:flutter/material.dart';
import 'CustomAppBar.dart';
import 'ItemView.dart';
import 'NotesListView.dart';

class NotesAppBody extends StatelessWidget {
  const NotesAppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: const [
          SizedBox(
            height: 15,
          ),
          CustomAppBar(),
          Expanded(child: ItemBuilder()),
        ],
      ),
    );
  }
}

