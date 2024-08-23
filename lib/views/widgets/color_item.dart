import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final bool colorSelected;
  final Color color;
  const ColorItem(
      {super.key, required this.colorSelected, required this.color});

  @override
  Widget build(BuildContext context) {
    return colorSelected
        ? CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: color,
            ),
          )
        : CircleAvatar(
            radius: 34,
            backgroundColor: color,
          );
  }
}
