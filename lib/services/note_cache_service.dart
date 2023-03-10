import 'dart:convert';
import 'dart:developer';

import 'package:gex_note/services/app_cache_service.dart';

import '../models/note_model.dart';

const String noteKey = "noteKey";

class NoteCacheService extends AppCache {
  static final NoteCacheService _instance = NoteCacheService();

  static NoteCacheService get instance {
    return _instance;
  }

  Future<void> createNotes({required List<Note> notes}) async {
    String json = jsonEncode(notes.map((i) => i.toJson()).toList());
    bool response = await AppCache.instance.prefs.setString(noteKey, json);
    log(response.toString());
  }

  List<Note> getNotes() {
    String? response = AppCache.instance.prefs.getString(noteKey);
    if (response == null) return [];
    List jsonNotes = jsonDecode(response);
    var notes = jsonNotes.map((jsonNote) => Note.fromJson(jsonNote)).toList();
    return notes;
  }
}
