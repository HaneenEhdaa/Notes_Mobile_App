import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.maxLine = 1, required this.hintText});
  final int maxLine;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: primaryColor,
      maxLines: maxLine,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: primaryColor),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(primaryColor)),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
