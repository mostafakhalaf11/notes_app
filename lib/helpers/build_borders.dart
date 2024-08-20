
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
          color: Colors.white,
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