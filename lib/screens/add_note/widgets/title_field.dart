import 'package:flutter/material.dart';

class TitleField extends StatelessWidget {
  const TitleField({
    Key? key,
    required TextEditingController titleController,
  })  : _titleController = titleController,
        super(key: key);

  final TextEditingController _titleController;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _titleController,
      decoration: const InputDecoration(
        border: InputBorder.none,
        hintText: 'Title',
      ),
      maxLines: 2,
    );
  }
}
