import 'package:flutter/material.dart';
import 'package:gex_note/providers/note_provider.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../widgets/custom_app_bar.dart';

class ViewNoteScreen extends StatelessWidget {
  const ViewNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NoteProvider note = Provider.of<NoteProvider>(context);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        title: Text('Add Note'),

        // Save note
        actions: IconButton(
            icon: const Icon(
              Icons.check_circle_outline,
              color: Colors.black,
            ),
            onPressed: () {}),
        centered: true,
        leading: IconButton(
            icon: const Icon(
              Icons.cancel_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        children: [
          Text(note.getNote[0] as String),
          const Expanded(
            child: SizedBox(
              height: double.infinity,
              child: TextField(
                keyboardType: TextInputType.multiline,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'You can note your ideas here',
                ),
                maxLines: null,
                expands: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
