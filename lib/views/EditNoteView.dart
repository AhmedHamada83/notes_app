import 'package:flutter/material.dart';
import 'package:notesapp/views/widgets/CustomAppBar.dart';

import 'widgets/CustomSearch.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children:const [
            SizedBox(height: 15,),
            CustomAppBar(
              text: 'Edit Note', icon: Icons.check,
            ),
           
          ],
        ),
      ),
    );
  }
}
