import 'dart:convert';
import 'dart:developer';

import 'package:gex_note/services/app_cache_service.dart';

import '../constants/strings.dart';
import '../models/note_model.dart';

class NoteCacheService extends AppCache {
  static final NoteCacheService _instance = NoteCacheService();

  static NoteCacheService get instance {
    return _instance;
  }

  Future<void> createNotes({required List<Note> notes}) async {
    String json = jsonEncode(notes.map((note) => note.toJson()).toList());
    log('Json : $json');
    await AppCache.instance.prefs.setString(noteKey, json);
  }

  List<Note> getNotes() {
    String? response = AppCache.instance.prefs.getString(noteKey);
    if (response == null) return [];
    List jsonNotes = jsonDecode(response);
    List<Note> notes = jsonNotes.map((note) => Note.fromJson(note)).toList();
    return notes;
  }
}
