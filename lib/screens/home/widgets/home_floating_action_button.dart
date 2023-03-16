import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../add_note/add_note_screen.dart';

class HomeFloatingActionButton extends StatelessWidget {
  const HomeFloatingActionButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.black,
        child: const Icon(Iconsax.note_add4),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddNoteScreen()));
        });
  }
}
