import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key, required this.notes});

  final List<NoteModel> notes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: notes.length,
        itemBuilder: (BuildContext, int index) => NoteItem(note: notes[index]),
      ),
    );
  }
}
