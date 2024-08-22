import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notes/models/note_model.dart';
import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);

    notes = notesBox.values.toList();
  }
}
