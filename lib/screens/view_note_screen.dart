import 'package:flutter/material.dart';
import 'package:gex_note/providers/note_provider.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../models/note_model.dart';

class ViewNoteScreen extends StatelessWidget {
  const ViewNoteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NoteProvider notesProvider = Provider.of<NoteProvider>(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '{noteModel.title}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Divider(color: Colors.black38),
              Expanded(
                child: SizedBox(
                  height: double.infinity,
                  child: Text(
                    'Gex first note you can ever fucking see it m hahahahhahahahahahhahaha hhahahahhahahah hahahahhahahahah ahhahahahaha you ou ouou ',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
