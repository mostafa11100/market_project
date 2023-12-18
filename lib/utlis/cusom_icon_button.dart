import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {super.key, required this.ontap, required this.icon, required this.size});
  final Function() ontap;
  final Icon icon;
  final double size;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: ontap,
      icon: icon,
      iconSize: size,
    );
  }
}
