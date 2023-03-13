import 'package:flutter/material.dart';
import 'package:gex_note/constants/colors.dart';
import 'package:gex_note/providers/note_provider.dart';
import 'package:gex_note/screens/home/widgets/default_home_body.dart';
import 'package:gex_note/screens/home/widgets/empty_home_place_holder.dart';
import 'package:gex_note/screens/home/widgets/home_app_bar.dart';
import 'package:gex_note/screens/home/widgets/home_floating_action_button.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<NoteProvider>(context, listen: false).getNotes();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    NoteProvider notesProvider = Provider.of<NoteProvider>(context);
    return Scaffold(
      floatingActionButton: const HomeFloatingActionButton(),
      backgroundColor: backgroundColor,
      appBar: const HomeAppBar(),
      body: notesProvider.notes.isEmpty
          ? const EmptyHomePlaceHolder()
          : const DefaultHomeBody(),
    );
  }
}
