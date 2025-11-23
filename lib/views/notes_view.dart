import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custom_floating_action_button.dart';
import 'package:note_app/widgets/note_item.dart';
import 'package:note_app/widgets/note_list_view.dart';
import 'package:note_app/widgets/note_view_body.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NoteViewBody(),
      floatingActionButton: CustomFloatingActionButton(),
    );
  }
}
