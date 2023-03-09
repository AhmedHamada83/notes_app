import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notesapp/cubits/add_note_cubit/add_note_cubit.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import 'AddNoteForm.dart';

class AddNoteBottom extends StatelessWidget {
  const AddNoteBottom({super.key});
  final isLoading = true;
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ModalProgressHUD(
        inAsyncCall: State is AddNoteCubitLoading ? true : false,
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
            return SingleChildScrollView(child: AddNoteForm());
          },
        ),
      ),
    );
  }
}