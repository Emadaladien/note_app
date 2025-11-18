import 'package:flutter/material.dart';
import 'package:note_app/widgets/custome_text_field.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 400,
                color: Colors.black,
                child: Column(
                  children: [
                    CustomeTextField(title: 'Title'),
                    CustomeTextField(title: 'Content', maxLines: 5),
                  ],
                ),
              );
            },
          );
        },
        backgroundColor: Colors.greenAccent,
        child: Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}

enum BoxHeightStyle {
  tight, // Height tightly wraps the text
  max, // Height covers the maximum line height
  includeLineSpacingMiddle,
  includeLineSpacingTop,
  includeLineSpacingBottom,
  strut, // Uses strut height
}
