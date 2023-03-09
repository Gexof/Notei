import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget title;
  final bool centered;
  final Widget actions;
  final Widget? leading;

  const CustomAppBar({
    Key? key,
    required this.title,
    required this.actions,
    required this.centered,
    this.leading,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(60);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: backgroundColor,
      elevation: 0,
      centerTitle: centered,
      title: title,
      leading: leading,
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 16),
          child: actions,
        ),
      ],
    );
  }
}
