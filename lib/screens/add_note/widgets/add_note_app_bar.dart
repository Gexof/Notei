import 'package:flutter/material.dart';

import '../../../providers/note_provider.dart';
import '../../../widgets/custom_app_bar.dart';

class AddNoteAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AddNoteAppBar({
    Key? key,
    required this.noteProvider,
    required TextEditingController titleController,
    required TextEditingController contentController,
  })  : _titleController = titleController,
        _contentController = contentController,
        super(key: key);

  final NoteProvider noteProvider;
  final TextEditingController _titleController;
  final TextEditingController _contentController;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
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
          noteProvider.creatNote(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
