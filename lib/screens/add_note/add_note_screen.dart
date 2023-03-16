import 'package:flutter/material.dart';

import 'package:gex_note/constants/colors.dart';
import 'package:gex_note/screens/add_note/widgets/add_note_app_bar.dart';
import 'package:gex_note/screens/add_note/widgets/content_field.dart';
import 'package:gex_note/screens/add_note/widgets/title_field.dart';
import 'package:provider/provider.dart';

import '../../providers/note_provider.dart';

class AddNoteScreen extends StatelessWidget {
  // contollers
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  AddNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NoteProvider noteProvider = Provider.of<NoteProvider>(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AddNoteAppBar(
          noteProvider: noteProvider,
          titleController: _titleController,
          contentController: _contentController),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // Title field
            TitleField(titleController: _titleController),

            // Content field
            ContentField(contentController: _contentController),
          ],
        ),
      ),
    );
  }
}
