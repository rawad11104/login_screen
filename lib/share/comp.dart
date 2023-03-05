// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget MyTextFormField(
    {required String lableText,
    required IconData prefixIcon,
    bool obscureText = false,
    required TextInputType TextInputType,
    required double padding}) {
  return Padding(
    padding: EdgeInsets.all(padding),
    child: TextFormField(
      obscureText: obscureText,
      keyboardType: TextInputType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: lableText,
        prefixIcon: Icon(prefixIcon),
      ),
    ),
  );
}

class Myclipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 1.25);
    path.cubicTo(size.width / 2 * 0.6, size.height * 0.5, size.width,
        size.height * 1.2, size.width * 1.2, size.height / 1.5);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
