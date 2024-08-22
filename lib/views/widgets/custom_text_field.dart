import 'package:flutter/material.dart';
import '../../helpers/build_borders.dart';

class CustomFormTextfield extends StatefulWidget {
  final String? hintText, initialValue;
  final int? textFieldLength;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final bool isPassword;
  final Widget? textLabel;

  const CustomFormTextfield(
      {super.key,
      this.onChanged,
      this.hintText,
      this.isPassword = false,
      this.textLabel,
      this.textFieldLength,
      this.onSaved,
      this.initialValue});

  @override
  State<CustomFormTextfield> createState() => _CustomFormTextfieldState();
}

class _CustomFormTextfieldState extends State<CustomFormTextfield> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: widget.initialValue,
      onSaved: widget.onSaved,
      maxLines: widget.textFieldLength,
      onChanged: widget.onChanged,
      obscureText: widget.isPassword ? obscureText : false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Field is requierd!';
        }
        return null;
      },
      decoration: InputDecoration(
        label: widget.textLabel,
        labelStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
        hintText: widget.hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 16),
        errorBorder: errorBorder(),
        focusedErrorBorder: focusErrorBorder(),
        enabledBorder: enabledBorder(),
        focusedBorder: focusedBorder(),
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  obscureText ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  obscureText = !obscureText;
                  setState(() {});
                },
              )
            : null,
      ),
      style: const TextStyle(fontSize: 16),
    );
  }
}
