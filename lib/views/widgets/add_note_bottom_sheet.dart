import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 24,
            left: 16,
            right: 16),
        child: Column(
          children: [
            const CustomFormTextfield(
              textLabel: Text('Title'),
              hintText: 'Enter note title here ',
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomFormTextfield(
              hintText: 'Enter note content here ',
              textLabel: Text('Content'),
              textFieldLength: 5,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              buttonLabel: 'Add',
              onTap: () {},
            ),
            const SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
