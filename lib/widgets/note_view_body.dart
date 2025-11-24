import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/note_list_view.dart';

class NoteViewBody extends StatelessWidget {
  NoteViewBody({super.key});
  Map<int, Color> colorsNote = {
    1: Color.fromARGB(164, 168, 239, 27),
    2: Color.fromARGB(148, 15, 15, 230),
    3: Color.fromARGB(185, 227, 217, 24),
    4: Color.fromARGB(202, 233, 141, 43),
    5: Color.fromARGB(202, 65, 226, 218),
  };
  List<NoteModel> notes = [
    NoteModel(
      title: 'Flutter Tips',
      content: 'Build your career with Emad aldin',
      date: DateTime.now().toString(),
      bgColor: 1,
    ),
    NoteModel(
      title: 'Sample Note 2',
      content: 'This is the content of sample note 2.',
      date: DateTime.now().toString(),
      bgColor: Colors.orangeAccent.hashCode,
    ),
    NoteModel(
      title: 'Sample Note 2',
      content: 'This is the content of sample note 2.',
      date: DateTime.now().toString(),
      bgColor: Colors.white.hashCode,
    ),
    NoteModel(
      title: 'Sample Note 2',
      content: 'This is the content of sample note 2.',
      date: DateTime.now().toString(),
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
