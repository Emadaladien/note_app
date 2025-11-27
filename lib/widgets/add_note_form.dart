import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/custome_button.dart';
import 'package:note_app/widgets/custome_text_field.dart';

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

                var note = NoteModel(
                  title: title!,
                  content: content!,
                  date: '',
                  bgColor: Colors.blue.toARGB32(),
                );
                BlocProvider.of<AddNoteCubit>(context).addNote(note);
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
