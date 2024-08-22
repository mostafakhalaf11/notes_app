import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes/cubits/cubit/notes_cubit.dart';
import 'package:notes/models/note_model.dart';

import '../../helpers/show_confirm_dialoge.dart';
import '../edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel note;
  const NoteItem({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EditNoteView(
            note: note,
          );
        }));
      },
      child: Container(
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.only(top: 18, bottom: 18, left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                  title: Text(
                    note.title,
                    style: const TextStyle(color: Colors.black, fontSize: 28),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      note.subTitle,
                      style:
                          const TextStyle(color: Colors.black54, fontSize: 20),
                    ),
                  ),
                  trailing: IconButton(
                    onPressed: () async {
                      var confirmed = await showConfirmationDialog(context);
                      if (confirmed == true) {
                        note.delete();
                        // ignore: use_build_context_synchronously
                        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      }
                    },
                    icon: const Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 28,
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 24, top: 16),
                child: Text(
                  note.date,
                  style: const TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
