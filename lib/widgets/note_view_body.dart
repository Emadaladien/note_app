import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/note_list_view.dart';

class NoteViewBody extends StatelessWidget {
  NoteViewBody({super.key});
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(title: 'Note', icon: Icons.search),
          Expanded(child: NoteListView(notes: notes)),
        ],
      ),
    );
  }
}
