import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';
import 'package:note_app/widgets/custome_text_field.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: const [
          SizedBox(height: 50),
          CustomAppbar(title: 'Edit Note', icon: Icons.check),
          SizedBox(height: 50),

          CustomeTextField(title: 'Title'),
          SizedBox(height: 24),

          CustomeTextField(title: 'Content', maxLines: 5),
        ],
      ),
    );
  }
}
