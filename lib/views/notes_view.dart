import 'package:flutter/material.dart';
import 'widgets/CustomButton.dart';
import 'widgets/CustomTextFiled.dart';
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
                  borderRadius: BorderRadius.circular(16)),
              context: context,
              builder: (context) {
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
    // ignore: avoid_unnecessary_containers
    return  Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children:const [
              SizedBox(
                height: 24,
              ),
              CustomTextFiled(
                hint: 'title',
              ),
              SizedBox(
                height: 10,
              ),
              CustomTextFiled(hint: 'add', maxLines: 5),
              SizedBox(
                height: 10,
              ),
              CustomButton(),
               SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
