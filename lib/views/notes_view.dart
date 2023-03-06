import 'package:flutter/material.dart';
import 'widgets/Notes_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            ),
                context: context, 
                builder: (context){
                return const AddNoteBottom();
              });
           
        },
        child: const Icon(Icons.add),
      ),
      body: const NotesAppBody(),
    );
  }
}

class AddNoteBottom extends StatelessWidget {
  const AddNoteBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
