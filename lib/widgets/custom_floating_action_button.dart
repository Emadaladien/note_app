import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_button_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            // backgroundColor: Colors.black54,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(16),
            ),
            context: context,
            builder: (BuildContext context) {
              return AddNoteButtonSheet();
            },
          );
        },
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
