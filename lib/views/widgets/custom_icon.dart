import 'package:flutter/material.dart';
import 'package:notes/constants.dart';

class CustomIcon extends StatelessWidget {
  final Widget icon;
  final void Function()? onPressed;

  const CustomIcon({super.key, required this.icon, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Container(
        height: 46,
        width: 46,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.07),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Center(
          child: IconButton(
            highlightColor: kPrimaryColor,
            onPressed: onPressed,
            icon: icon,
            // size: 28,
          ),
        ),
      ),
    );
  }
}
