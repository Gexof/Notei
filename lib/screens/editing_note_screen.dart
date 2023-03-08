// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

import '../models/note_model.dart';

class EditingNoteScreen extends StatefulWidget {
  Note note;
  bool isNewNote;

  EditingNoteScreen({
    Key? key,
    required this.note,
    required this.isNewNote,
  }) : super(key: key);

  @override
  State<EditingNoteScreen> createState() => _EditingNoteScreenState();
}

class _EditingNoteScreenState extends State<EditingNoteScreen> {
  QuillController _quillController = QuillController.basic();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            // tool bar
            QuillToolbar.basic(
              controller: _quillController,
              showAlignmentButtons: false,
              showBackgroundColorButton: false,
              showCenterAlignment: false,
              showColorButton: false,
              showCodeBlock: false,
              showDirection: false,
              showFontFamily: false,
              showDividers: false,
              showIndent: false,
              showHeaderStyle: false,
              showLink: false,
              showSearchButton: false,
              showInlineCode: false,
              showQuote: false,
              showListNumbers: false,
              showListBullets: false,
              showClearFormat: false,
              showBoldButton: false,
              showFontSize: false,
              showItalicButton: false,
              showUnderLineButton: false,
              showStrikeThrough: false,
              showListCheck: false,
            ),
            // Editor
            Expanded(
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: QuillEditor.basic(
                    controller: _quillController,
                    readOnly: false,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
