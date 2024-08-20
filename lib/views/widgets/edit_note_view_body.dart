import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ListView(
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomFormTextfield(
            textLabel: Text('Title'),
            hintText: 'Update note title here',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomFormTextfield(
            textLabel: Text('Content'),
            hintText: 'Update note content here',
            textFieldLength: 5,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomButton(
            onTap: () {},
            buttonLabel: 'Update',
          )
        ],
      ),
    );
  }
}
