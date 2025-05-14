import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
          CustomButton(),
        ],
      ),
    );
  }
}
