import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({
    super.key,
    this.maxLines = 1,
    required this.title,
    // this.maxLength = 50,
  });

  final int maxLines;
  // final int maxLength;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        // maxLength: maxLength,
        maxLines: maxLines,
        cursorColor: KPrimaryColor,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(color: Colors.white70),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(16),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KPrimaryColor),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
