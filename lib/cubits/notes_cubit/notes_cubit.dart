import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../Model/Note_model.dart';
import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());


   List<NoteModel>? notes;
 fetchAllNotes()  {
  
    
      var NoteBox = Hive.box<NoteModel>(kNotesBox);
    
       notes=NoteBox.values.toList();
    
      
    
  }

}
