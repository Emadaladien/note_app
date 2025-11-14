import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_note_item.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});
  List<NoteModel> notes = [
    NoteModel(
      title: 'Flutter Tips',
      content: 'Build your career with Emad aldin',
      lastEdited: DateTime.now(),
      bgColor: Colors.yellow,
    ),
    NoteModel(
      title: 'Sample Note 2',
      content: 'This is the content of sample note 2.',
      lastEdited: DateTime.now(),
      bgColor: Colors.orangeAccent,
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
      body: ListView.builder(
        itemCount: notes.length,
        itemBuilder: (BuildContext, int index) => NoteItem(note: notes[index]),
      ),
    );
  }
}
