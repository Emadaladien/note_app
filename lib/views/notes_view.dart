import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_floating_action_button.dart';
import 'package:note_app/widgets/custom_note_item.dart';
import 'package:note_app/widgets/note_list_view.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});
  List<NoteModel> notes = [
    NoteModel(
      title: 'Flutter Tips',
      content: 'Build your career with Emad aldin',
      lastEdited: DateTime.now(),
      bgColor: Colors.red,
    ),
    NoteModel(
      title: 'Sample Note 2',
      content: 'This is the content of sample note 2.',
      lastEdited: DateTime.now(),
      bgColor: Colors.orangeAccent,
    ),
    NoteModel(
      title: 'Sample Note 2',
      content: 'This is the content of sample note 2.',
      lastEdited: DateTime.now(),
      bgColor: Colors.white,
    ),
    NoteModel(
      title: 'Sample Note 2',
      content: 'This is the content of sample note 2.',
      lastEdited: DateTime.now(),
      // bgColor: Colors.white.withValues(alpha: .6),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ),
        ],
      ),
      body: NoteListView(notes: notes),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
