import 'package:flutter/material.dart';

void showSnackBar(
    {required BuildContext context,
    required String content,
    Color backgroundColor = Colors.red}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        backgroundColor: backgroundColor,
        content: Text(content),
      ),
    );
}
