import 'package:flutter/material.dart';
import 'package:gex_note/widgets/custom_app_bar.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
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
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
