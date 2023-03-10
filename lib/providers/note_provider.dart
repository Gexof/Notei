import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gex_note/services/note_cache_service.dart';

import '../models/note_model.dart';

// Note(
//   id: 0,
//   title: 'gex',
//   content: 'Hello bitch',
//   date: DateTime.now().toString(),
// ),
// Note(
//   id: 1,
//   title: 'gex',
//   content: 'Hello bitch',
//   date: DateTime.now().toString(),
// ),

class NoteProvider extends ChangeNotifier {
  List<Note> notes = [];

  void creatNote(String title, String content) {
    try {
      Note note = Note(
        id: notes.length,
        title: title,
        content: content,
        date: DateTime.now().toString(),
      );
      notes.add(note);
      NoteCacheService.instance.createNotes(notes: notes);
      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
  }

  void getNotes() {
    notes = NoteCacheService.instance.getNotes();
    notifyListeners();
  }

  void deleteNote(int i) {
    notes.removeAt(i);
    notifyListeners();
  }
}
