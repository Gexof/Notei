import 'package:flutter/material.dart';

class ContentField extends StatelessWidget {
  const ContentField({
    Key? key,
    required TextEditingController contentController,
  })  : _contentController = contentController,
        super(key: key);

  final TextEditingController _contentController;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: double.infinity,
        child: TextField(
          controller: _contentController,
          keyboardType: TextInputType.multiline,
          decoration: const InputDecoration(
            border: InputBorder.none,
            hintText: 'You can note your ideas here',
          ),
          maxLines: null,
          expands: true,
        ),
      ),
    );
  }
}
