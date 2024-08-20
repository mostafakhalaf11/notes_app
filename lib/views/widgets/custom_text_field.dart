import 'package:flutter/material.dart';
import '../../helpers/build_borders.dart';

class CustomFormTextfield extends StatefulWidget {
  final String? hintText;
  final String? validateMessage;
  final int? textFieldLength;
  final void Function(String)? onChanged;
  final bool isPassword;
  final Widget? textLabel;

  const CustomFormTextfield(
      {super.key,
      this.onChanged,
      this.hintText,
      this.validateMessage,
      this.isPassword = false,
      this.textLabel,
      this.textFieldLength});

  @override
  State<CustomFormTextfield> createState() => _CustomFormTextfieldState();
}

class _CustomFormTextfieldState extends State<CustomFormTextfield> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.textFieldLength,
      onChanged: widget.onChanged,
      obscureText: widget.isPassword ? obscureText : false,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return widget.validateMessage;
        }
        return null;
      },
      decoration: InputDecoration(
        label: widget.textLabel,
        labelStyle: const TextStyle(
            fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey),
        hintText: widget.hintText,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: const TextStyle(color: Colors.blueGrey, fontSize: 16),
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
