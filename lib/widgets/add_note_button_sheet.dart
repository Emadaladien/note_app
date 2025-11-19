import 'package:flutter/material.dart';
import 'package:note_app/widgets/custome_button.dart';
import 'package:note_app/widgets/custome_text_field.dart';

class AddNoteButtonSheet extends StatelessWidget {
  const AddNoteButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(8),
        color: Colors.black12,
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomeTextField(title: 'Title'),
            SizedBox(height: 16),
            CustomeTextField(title: 'Content', maxLines: 5),
            SizedBox(height: 32),
            CustomeButton(title: 'Add Note'),
            SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
