import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_nots_cubit/add_notes_cubit.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/edit_pade.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottomSheet extends StatefulWidget {
  const AddNoteBottomSheet({super.key});

  @override
  State<AddNoteBottomSheet> createState() => _AddNoteBottomSheetState();
}

class _AddNoteBottomSheetState extends State<AddNoteBottomSheet> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: BlocConsumer<AddNotesCubit, AddNotesState>(
            listener: (context, state) {
          if (state is AddNotesFailure) {
            print('failled!!!!!!!!!!!!!!!${state.errorMessage}');
          }
          if (state is AddNotesSuccess) {
            print('Success***************');

            Navigator.pop(context);
          }
        }, builder: (context, state) {
          if (state is AddNotesLoading) {
            return const Center(
                child: CircularProgressIndicator(color: Colors.amber));
          } else {
            return SizedBox(
              height: MediaQuery.of(context).size.height * 0.75,
              child: const AddNoteForm(),
            );
          }
        }),
      ),
    );
  }
}
