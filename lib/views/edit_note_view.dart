import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Text(
            'Edit Note',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                    return NotesView();
                  }));
                },
                icon: Icon(
                  Icons.done_outline_rounded,
                  size: 24,
                )),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: [
            SizedBox(
              height: 18,
            ),
            CustomTextField(
              hintText: 'Title',
            ),
            SizedBox(
              height: 18,
            ),
            CustomTextField(
              maxLine: 5,
              hintText: 'Content',
            ),
            SizedBox(
              height: 90,
            ),
          ],
        ),
      ),
    );
  }
}
