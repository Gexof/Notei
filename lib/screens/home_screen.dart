import 'package:flutter/material.dart';
import 'package:gex_note/constants/colors.dart';
import 'package:gex_note/providers/note_provider.dart';
import 'package:gex_note/screens/add_note_screen.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

import '../helpers/cache.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/note_tile.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

Cache sharedPref = Cache();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    NoteProvider note = Provider.of<NoteProvider>(context);

    return Scaffold(
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(Iconsax.note_add4),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AddNoteScreen()));
          }),
      backgroundColor: backgroundColor,
      appBar: CustomAppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Icon(
              Iconsax.note_25,
              color: Colors.black,
              size: 26,
            ),
            SizedBox(width: 10),
            Text(
              'Notei',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        actions: const CircleAvatar(
          radius: 16,
        ),
        centered: false,
      ),
      body: note.getNote.isEmpty
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/idea.png'),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Put your ideas in here',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ],
            )
          : Column(
              children: [
                const Divider(color: Colors.black38),
                Expanded(
                  child: ListView.builder(
                    itemCount: note.getNote.length,
                    itemBuilder: (context, i) {
                      return NoteTile(
                        noteModel: note.getNote[i],
                        onPressed: (_) {
                          note.deleteNote(i);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
    );
  }
}
