import 'package:flutter/material.dart';
import 'package:notes_app/widgets/list_view_notes.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
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
        body: ListOfNotes(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled:true,
                context: context,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35)),
                builder: (context) {
                  return AddNoteBottomSheet();
                });
          },
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          child: Icon(
            Icons.add,
            color: Colors.black,
          ),
        ));
  }
}
