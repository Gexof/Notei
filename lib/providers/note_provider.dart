import 'dart:developer';

import 'package:gex_note/helpers/cache.dart';

import 'package:flutter/material.dart';

import '../models/note_model.dart';

class NoteProvider extends ChangeNotifier {
  final List<Note> _notes = [
    Note(
      id: 0,
      title: 'gex',
      content: 'Hello bitch',
      date: DateTime.now().toString(),
    ),
    Note(
      id: 1,
      title: 'gex',
      content: 'Hello bitch',
      date: DateTime.now().toString(),
    ),
  ];

  Cache sharedPref = Cache();

  // Get notes
  List<Note> get getNote {
    return _notes;
  }

  // Add new note
  void creatNote(String title, String content) {
    try {
      Note note = Note(
        id: _notes.length,
        title: title,
        content: content,
        date: DateTime.now().toString(),
      );
      log(note.id.toString());
      _notes.add(note);
      notifyListeners();
    } catch (e) {
      log(e.toString());
    }
  }

  // Delete note
  void deleteNote(int i) {
    _notes.removeAt(i);
    notifyListeners();
  }
}
