import 'package:flutter/material.dart';

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
      theme: ThemeData(brightness: Brightness.dark),
      routes: {
        NotesView.id: (context) => const NotesApp(),
      },
      // initialRoute: NotesView.id,
      home: const NotesView(),
    );
  }
}
