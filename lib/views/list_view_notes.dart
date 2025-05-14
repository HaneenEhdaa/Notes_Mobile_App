import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_box.dart';

class ListOfNotes extends StatelessWidget {
  const ListOfNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return NoteBox();
    });
  }
}
