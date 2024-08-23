import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';
import 'package:notes/views/widgets/edit_note_color_list_view.dart';
import '../../cubits/notes_cubit/notes_cubit.dart';
import 'custom_app_bar.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;
  const EditNoteViewBody({super.key, required this.note});

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = content ?? widget.note.subTitle;
              widget.note.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            appBarTiltle: 'Edit Note',
            icon: const Icon(
              Icons.check,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomFormTextfield(
              onChanged: (value) {
                title = value;
              },
              textLabel: const Text('Title'),
              initialValue: widget.note.title,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomFormTextfield(
              onChanged: (value) {
                content = value;
              },
              textLabel: const Text('Content'),
              initialValue: widget.note.subTitle,
              textFieldLength: 5,
            ),
            const SizedBox(
              height: 50,
            ),
            EditNoteColorListView(
              note: widget.note,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle = content ?? widget.note.subTitle;
                widget.note.save();
                Navigator.pop(context);
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              },
              buttonLabel: 'Update',
            )
          ],
        ),
      ),
    );
  }
}
