import 'package:flutter/material.dart';

class CustomeTextField extends StatelessWidget {
  const CustomeTextField({super.key, this.maxLines = 1, required this.title});

  final int maxLines;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: TextField(
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: title,
          hintStyle: TextStyle(color: Colors.white54),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(16),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent),
            borderRadius: BorderRadius.circular(8),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.greenAccent),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
