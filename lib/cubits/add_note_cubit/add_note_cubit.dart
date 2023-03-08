// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/Model/Note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../constants.dart';

part 'add_note_state.dart';

class AddNoteCubitCubit extends Cubit<AddNoteCubitState> {
  AddNoteCubitCubit() : super(AddNoteCubitInitial());

  addNote(NoteModel note) async {
    emit(AddNoteCubitLoading());
    try {
  var NoteBox = Hive.box<NoteModel>(kNotesBox);
  await NoteBox.add(note);
  emit(AddNoteCubitSuccess());
} catch (e) {
  emit(AddNoteCubitFailure(errorMassage: e.toString()));
}
  }
}
