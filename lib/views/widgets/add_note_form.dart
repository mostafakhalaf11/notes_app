import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notes/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'colors_list_view.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomFormTextfield(
            textLabel: const Text('Title'),
            hintText: 'Enter note title here ',
            onSaved: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          CustomFormTextfield(
            hintText: 'Enter note content here ',
            textLabel: const Text('Content'),
            textFieldLength: 5,
            onSaved: (value) {
              subTitle = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 20,
          ),
          addNoteButton(),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  BlocBuilder<AddNoteCubit, AddNoteState> addNoteButton() {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return CustomButton(
          isLoading: state is AddNoteLoading ? true : false,
          buttonLabel: 'Add',
          onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
              var currentDate = DateTime.now();
              var formattedCurrentDate =
                  DateFormat('dd, MMMM, yyyy').format(currentDate);

              var noteModel = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: formattedCurrentDate.toString(),
                  color: Colors.lightBlue.value);
              BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
            } else {
              autovalidateMode = AutovalidateMode.always;
              setState(() {});
            }
          },
        );
      },
    );
  }
}
