import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:gex_note/screens/view_note_screen.dart';
import 'package:iconsax/iconsax.dart';

import 'package:gex_note/models/note_model.dart';

class NoteTile extends StatelessWidget {
  final Note noteModel;
  final void Function(BuildContext)? onPressed;

  const NoteTile({
    super.key,
    required this.noteModel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Slidable(
            endActionPane: ActionPane(
              motion: const StretchMotion(),
              children: [
                SlidableAction(
                  onPressed: onPressed,
                  icon: Iconsax.note_remove,
                  backgroundColor: Colors.red.shade300,
                  borderRadius: BorderRadius.circular(16),
                ),
              ],
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ViewNoteScreen(),
                    ));
              },
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xfff0f6fd),
                  borderRadius: BorderRadius.all(
                    Radius.circular(16),
                  ),
                ),
                child: Row(
                  children: [
                    // Marker on the left
                    Container(
                      width: 15,
                      height: 120,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          bottomLeft: Radius.circular(16),
                        ),
                      ),
                    ),

                    //  body of note
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // (Note Title)
                            Text(
                              noteModel.title!,
                              style: const TextStyle(
                                fontSize: 18,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),

                            const SizedBox(height: 10),

                            // (Note Content)
                            Text(
                              noteModel.content!,
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),

                            const SizedBox(height: 10),

                            // Note Date
                            Text(noteModel.date.toString()),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
