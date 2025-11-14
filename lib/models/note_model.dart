import 'package:flutter/material.dart';

class NoteModel {
  final String? title;
  final String? content;
  final Color bgColor;
  final DateTime? lastEdited;
  final Icon deleteIcon = const Icon(Icons.delete);
  const NoteModel({
    required this.bgColor,
    required this.title,
    required this.content,
    required this.lastEdited,
  });
}
