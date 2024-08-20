import 'package:flutter/material.dart';

import 'views/edit_note_view.dart';
import 'views/notes_view.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
      routes: {
        NotesView.id: (context) => const NotesApp(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
      // initialRoute: NotesView.id,
      home: const NotesView(),
    );
  }
}
