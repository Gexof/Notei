import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gex_note/providers/note_provider.dart';
import 'package:gex_note/screens/home/home_screen.dart';
import 'package:gex_note/services/app_cache_service.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppCache.instance.init();
  log("CALLED");
  runApp(
    ChangeNotifierProvider(
      create: (context) => NoteProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Noti',
      home: HomeScreen(),
    );
  }
}
