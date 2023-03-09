import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';


import 'AddNoteForm.dart';

class AddNoteBottom extends StatelessWidget {
  const AddNoteBottom({super.key});
  
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return BlocProvider(
      create: (BuildContext context) =>AddNoteCubitCubit(),
      child: BlocConsumer<AddNoteCubitCubit, AddNoteCubitState>(
        listener: (context, state) {
          if (state is AddNoteCubitFailure) {
            print('failed {$state.errorMassage}');
          }
    
          if (state is AddNoteCubitSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          // ignore: prefer_const_constructors
          return  AbsorbPointer(

            absorbing: state is AddNoteCubitLoading ?true:false,
            child: Padding(
              padding:  EdgeInsets.only(right: 16,left: 16,bottom: MediaQuery.of(context).viewInsets.bottom),
              
              child: const SingleChildScrollView(
                child:  AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
