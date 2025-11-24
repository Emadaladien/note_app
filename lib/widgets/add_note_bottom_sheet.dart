import 'package:flutter/material.dart';
import 'package:note_app/widgets/custome_button.dart';
import 'package:note_app/widgets/custome_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // borderRadius: BorderRadius.circular(8),
        color: Colors.black12,
      ),
      child: SingleChildScrollView(child: AddNoteForm()),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomeTextField(
            onSaved: (value) {
              title = value;
            },
            title: 'Title',
          ),
          SizedBox(height: 16),
          CustomeTextField(
            onSaved: (value) {
              content = value;
            },
            title: 'Content',
            maxLines: 5,
          ),
          SizedBox(height: 32),
          CustomeButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                print('Title: $title');
                print('Content: $content');
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            title: 'Add Note',
          ),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
