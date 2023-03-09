// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/Model/Note_model.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';

import 'CustomButton.dart';
import 'CustomTextFiled.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          CustomTextFiled(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 10,
          ),
          CustomTextFiled(
              onSaved: (value) {
                subtitle = value;
              },
              hint: 'add',
              maxLines: 5),
          const SizedBox(
            height: 10,
          ),
          BlocBuilder<AddNoteCubitCubit,AddNoteCubitState>(
            builder: ( context, state) { 


            return CustomButton(
              isLoading: state is AddNoteCubitLoading ?true:false,
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
          
                  var noteModel = NoteModel(
                      title: title!,
                      subtitle: subtitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubitCubit>(context).addNote(noteModel);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            );
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
