import 'package:flutter/material.dart';

import '../constants.dart';

OutlineInputBorder focusedBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: kPrimaryColor,
    ),
  );
}

OutlineInputBorder enabledBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.grey,
    ),
  );
}

OutlineInputBorder focusErrorBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );
}

OutlineInputBorder errorBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.red,
    ),
  );
}
