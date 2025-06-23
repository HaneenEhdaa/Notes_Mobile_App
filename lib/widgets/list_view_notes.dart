import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/displayNotes_cubit/notes_cubit.dart';
import 'package:notes_app/widgets/note_box.dart';

class ListOfNotes extends StatelessWidget {
  const ListOfNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        return ListView.builder(
            itemCount: state is NotesSuccess ? state.notes.length : 0,
            itemBuilder: (context, index) {
              return NoteBox();
            });
      },
    );
  }
}
