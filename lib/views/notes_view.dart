import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/constants.dart';
import '../cubits/cubit/notes_cubit.dart';
import 'widgets/add_note_bottom_sheet.dart';
import 'widgets/custom_app_bar.dart';
import 'widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static String id = 'NotesView';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: CustomAppBar(
            appBarTiltle: 'Notes',
            icon: Icons.search,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(50), // Adjust the radius as needed
          ),
          child: const Icon(
            Icons.add,
            size: 30,
            color: Colors.black,
          ),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
