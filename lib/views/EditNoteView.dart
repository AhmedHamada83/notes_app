import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/CustomAppBar.dart';
import 'package:notesapp/views/widgets/CustomTextFiled.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: const [
            SizedBox(
              height: 10,
            ),
            CustomAppBar(
              text: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFiled(
              hint: 'title',
            ),
            SizedBox(
              height: 15,
            ),
            CustomTextFiled(
              hint: 'content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
