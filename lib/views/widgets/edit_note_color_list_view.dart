import 'package:flutter/material.dart';
import 'package:notes/views/widgets/color_item.dart';
import '../../constants.dart';
import '../../models/note_model.dart';

class EditNoteColorListView extends StatefulWidget {
  final NoteModel note;

  const EditNoteColorListView({super.key, required this.note});

  @override
  State<EditNoteColorListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<EditNoteColorListView> {
  late int currentColor;
  @override
  void initState() {
    currentColor = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 34 * 2,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColors.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: GestureDetector(
                onTap: () {
                  currentColor = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  color: kColors[index],
                  colorSelected: currentColor == index,
                ),
              ),
            );
          }),
    );
  }
}
