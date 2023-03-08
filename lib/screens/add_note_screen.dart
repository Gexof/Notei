import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:gex_note/constants/colors.dart';
import 'package:gex_note/widgets/custom_app_bar.dart';
import 'package:provider/provider.dart';

import '../helpers/cache.dart';
import '../providers/note_provider.dart';

class AddNoteScreen extends StatelessWidget {
  // contollers
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();
  Cache sharedPref = Cache();

  AddNoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    NoteProvider note = Provider.of<NoteProvider>(context);
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        title: const Text(
          'Add Note',
          style: TextStyle(
            color: Colors.black,
          ),
        ),

        // Save note
        actions: IconButton(
          icon: const Icon(
            Icons.check_circle_outline,
            color: Colors.black,
          ),
          onPressed: () {
            note.creatNote(
              _titleController.text,
              _contentController.text,
            );

            Navigator.pop(context);
          },
        ),
        centered: true,

        // cancel note
        leading: IconButton(
            icon: const Icon(
              Icons.cancel_outlined,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            // Title field
            TextField(
              controller: _titleController,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Title',
              ),
              maxLines: 2,
            ),

            // Content field
            Expanded(
              child: SizedBox(
                height: double.infinity,
                child: TextField(
                  controller: _contentController,
                  keyboardType: TextInputType.multiline,
                  decoration: const InputDecoration(
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
      ),
    );
  }
}
