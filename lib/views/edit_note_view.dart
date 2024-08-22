import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'widgets/edit_note_view_body.dart';

class EditNoteView extends StatefulWidget {
  final NoteModel note;
  static String id = 'EditNoteView';
  const EditNoteView({super.key, required this.note});

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  @override
  Widget build(BuildContext context) {
    return EditNoteViewBody(
      note: widget.note,
    );
  }
}
