import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  final String? appBarTiltle;
  final Widget icon;
  final void Function()? onPressed;

  const CustomAppBar(
      {super.key,
      required this.appBarTiltle,
      required this.icon,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        title: Text(
          appBarTiltle!,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        actions: [
          CustomIcon(
            onPressed: onPressed,
            icon: icon,
          ),
        ]);
  }
}
