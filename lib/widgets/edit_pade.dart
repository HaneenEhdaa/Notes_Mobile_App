import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class EditNotePage extends StatefulWidget {
  const EditNotePage({super.key});

  @override
  State<EditNotePage> createState() => _EditNotePageState();
}

class _EditNotePageState extends State<EditNotePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
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
        child: AddNoteForm(),
      ),
    );
  }
}

// class AddNoteForm extends StatefulWidget {
//   const AddNoteForm({super.key});

//   @override
//   State<AddNoteForm> createState() => _AddNoteFormState();
// }

// class _AddNoteFormState extends State<AddNoteForm> {
//   final GlobalKey<FormState> formKey = GlobalKey();
//   AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
//   String? title, subTitle;
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formKey,
//       autovalidateMode: autovalidateMode,
//       child: ListView(
//         children: [
//           SizedBox(
//             height: 18,
//           ),
//           CustomTextField(
//             onSaved: (value) {
//               title = value;
//             },
//             hintText: 'Title',
//           ),
//           SizedBox(
//             height: 18,
//           ),
//           CustomTextField(
//             onSaved: (value) {
//               subTitle = value;
//             },
//             maxLine: 5,
//             hintText: 'Content',
//           ),
//           SizedBox(
//             height: 90,
//           ),
//         ],
//       ),
//     );
//   }
// }
