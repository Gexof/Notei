import 'package:flutter/material.dart';
import 'package:gex_note/providers/note_provider.dart';
import 'package:gex_note/widgets/note_tile.dart';
import 'package:provider/provider.dart';

import '../../view_note_screen.dart';

class DefaultHomeBody extends StatelessWidget {
  const DefaultHomeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    NoteProvider notesProvider = Provider.of<NoteProvider>(context);
    return Column(
      children: [
        const Divider(color: Colors.black38),
        Expanded(
          child: ListView.builder(
            itemCount: notesProvider.notes.length,
            itemBuilder: (context, i) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ViewNoteScreen(index: i),
                    ),
                  );
                },
                child: NoteTile(
                  noteModel: notesProvider.notes[i],
                  onPressed: (_) {
                    notesProvider.deleteNote(i);
                  },
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
