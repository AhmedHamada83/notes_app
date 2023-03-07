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
    return  const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode=AutovalidateMode.disabled;
  String? title,subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key:formKey ,
      autovalidateMode: autovalidateMode,
      child: Column(
        children:  [
          const SizedBox(
            height: 24,
          ),
          CustomTextFiled(
            onSaved: (value){
                title=value;
            },
            hint: 'title',
            
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFiled(
            onSaved: (value){
                subtitle=value;
            },
            hint: 'add', maxLines: 5),
         const SizedBox(
            height: 10,
          ),
          CustomButton(
            onTap: (){
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              }else{
                autovalidateMode=AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
