import 'package:flutter/material.dart';
import 'package:notes_app/widgets/note_box.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              'Notes',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w200),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    size: 24,
                  )),
            )
          ],
        ),
        body: ListView.builder(itemBuilder: (context, index) {
          return NoteBox();
        }));
  }
}
