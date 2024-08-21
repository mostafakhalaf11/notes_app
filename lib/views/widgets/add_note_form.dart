import 'package:flutter/material.dart';
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
          CustomButton(
            buttonLabel: 'Add',
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
