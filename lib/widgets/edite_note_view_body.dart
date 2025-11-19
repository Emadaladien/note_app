import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_appbar.dart';

class EditeNoteViewBody extends StatelessWidget {
  const EditeNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 50),
          CustomAppbar(title: 'Edit Note', icon: Icons.check),
        ],
      ),
    );
  }
}
