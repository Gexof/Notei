
//   // Future<NoteModel> get getNoteModel async {
//   //   NoteModel noteModel = await readNote();
//   //   return noteModel;
//   // }

//   // void creatNote(String title, String content) async {
//   //   preferences = await SharedPreferences.getInstance();
//   //   NoteModel note = NoteModel(
//   //     tilte: title,
//   //     content: content,
//   //     date: DateTime.now().toString(),
//   //   );

//   //   String noteData = jsonEncode(note.toJson());
//   //   log(noteData.toString());

//   //   preferences.setString('note', noteData);
//   //   _note.add(note);
//   //   notifyListeners();
//   // }

//   // void creatNote(String title, String content) async {
//   //   NoteModel note = NoteModel(
//   //     tilte: title,
//   //     content: content,
//   //     date: DateTime.now().toString(),
//   //   );
//   //   String noteData = jsonEncode(note.toJson());
//   //   log(noteData.toString());
//   //   Cache.saveNote('note', noteData);

//   //   _note.add(note);
//   //   log(note.toString());

//   //   notifyListeners();
//   // }









  
//   // readNotes() async {
//   //   String noteData = await Cache.readNotes('note');
//   //   // List<NoteModel> noteList = jsonDecode(noteData);
//   //   Map<String, dynamic> myData = jsonDecode(noteData);
//   //   _note = NoteModel.fromJson(myData) as List<NoteModel>;
//   //   log(_note.toString());
//   // }

//   // Future<List<NoteModel>> loadData() async {
//   //   try {
//   //     NoteModel noteModel = NoteModel.fromJson(await Cache.readNotes('note'));

//   //     notifyListeners();
//   //   } catch (e) {
//   //     // log(_note.toString());
//   //     log(e.toString());
//   //   }
//   //   return _note;
//   // }

//   // readNote() async {
//   //   preferences =
//   //       await SharedPreferences.getInstance(); //instance of preferences
//   //   String noteData = preferences.getString('note')!; //rettrivig the note
//   //   log(noteData.toString());
//   //   // NoteModel noteModel = NoteModel.fromJson(jsonDecode(noteData));   // decdoing the json
//   //   // return noteModel;
//   //   Map<String, dynamic> map = jsonDecode(noteData);
//   //   final note = NoteModel.fromJson(map);
//   //   return note;
//   // }




// // import 'dart:developer';

// // class NoteModel {
// //   late String title;
// //   late String content;
// //   late String date;

// //   NoteModel({
// //     required this.title,
// //     required this.content,
// //   }) {
// //     date = DateTime.now().toString();
// //   }

// //   NoteModel.fromJson(Map<String, dynamic> json) {
// //     log(json.toString());
// //     title = json['title'];
// //     log(title.toString());
// //     content = json['content'];
// //     log(content.toString());
// //     date = json['date'];
// //     log(date.toString());
// //   }

// //   Map<String, dynamic> toJson() {
// //     return {
// //       'tilte': title,
// //       'content': content,
// //       'date': date.toString(),
// //     };
// //   }
// // }


//   // void goToNotePage(Note note, bool isNewNote, BuildContext context) {
//   //   Navigator.push(
//   //     context,
//   //     MaterialPageRoute(
//   //       builder: (context) => EditingNoteScreen(
//   //         isNewNote: false,
//   //         note: note,
//   //       ),
//   //     ),
//   //   );
//   // }





// // import 'dart:developer';

// // import 'package:flutter/material.dart';
// // import 'package:gex_note/constants/colors.dart';
// // import 'package:gex_note/models/note_model.dart';
// // import 'package:gex_note/providers/note_provider.dart';
// // import 'package:gex_note/screens/add_note_screen.dart';
// // import 'package:iconsax/iconsax.dart';
// // import 'package:provider/provider.dart';

// // import '../helpers/cache.dart';
// // import '../widgets/custom_app_bar.dart';
// // import '../widgets/note_tile.dart';

// // class HomeScreen extends StatefulWidget {
// //   @override
// //   State<HomeScreen> createState() => _HomeScreenState();
// // }

// // class _HomeScreenState extends State<HomeScreen> {
// //   Cache sharedPref = Cache();

// //   @override
// //   Widget build(BuildContext context) {
// //     NoteProvider note = Provider.of<NoteProvider>(context);

// //     return Scaffold(
// //       floatingActionButton: FloatingActionButton(
// //           backgroundColor: Colors.black,
// //           child: const Icon(Iconsax.note_add4),
// //           onPressed: () {
// //             Navigator.push(context,
// //                 MaterialPageRoute(builder: (context) => AddNoteScreen()));
// //           }),
// //       backgroundColor: backgroundColor,
// //       appBar: CustomAppBar(
// //         title: Row(
// //           mainAxisAlignment: MainAxisAlignment.start,
// //           crossAxisAlignment: CrossAxisAlignment.center,
// //           children: const [
// //             Icon(
// //               Iconsax.note_25,
// //               color: Colors.black,
// //               size: 26,
// //             ),
// //             SizedBox(width: 10),
// //             Text(
// //               'Notei',
// //               style: TextStyle(
// //                 color: Colors.black,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),
// //           ],
// //         ),
// //         actions: const CircleAvatar(
// //           radius: 16,
// //         ),
// //         centered: false,
// //       ),
// //       body: note.getNote.isEmpty
// //           ? Column(
// //               crossAxisAlignment: CrossAxisAlignment.center,
// //               children: [
// //                 Image.asset('assets/idea.png'),
// //                 const SizedBox(
// //                   height: 20,
// //                 ),
// //                 const Text(
// //                   'Put your ideas in here',
// //                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
// //                 ),
// //               ],
// //             )
// //           : Column(
// //               children: [
// //                 const Divider(color: Colors.black38),
// //                 Expanded(
// //                   child: ListView.builder(
// //                     itemCount: note.getNote.length,
// //                     itemBuilder: (context, i) {
// //                       return NoteTile(
// //                         noteModel: note.getNote[i],
// //                         onPressed: (_) {
// //                           note.deleteNote(i);
// //                         },
// //                       );
// //                     },
// //                   ),
// //                 ),
// //                 TextButton(onPressed: () {}, child: Text('Get notes')),
// //               ],
// //             ),
// //     );
// //   }
// // }









// import 'package:flutter/material.dart';
// import 'sharedPref.dart';
// import 'user.dart';

// class Demo extends StatefulWidget {
//   @override
//   DemoView createState() {
//     return DemoView();
//   }
// }

// class DemoView extends State<Demo> {
//   SharedPref sharedPref = SharedPref();
//   User userSave = User();
//   User userLoad = User();

//   loadSharedPrefs() async {
//     try {
//       User user = User.fromJson(await sharedPref.read("user"));
//       Scaffold.of(context).showSnackBar(SnackBar(
//           content: new Text("Loaded!"),
//           duration: const Duration(milliseconds: 500)));
//       setState(() {
//         userLoad = user;
//       });
//     } catch (Excepetion) {
//       Scaffold.of(context).showSnackBar(SnackBar(
//           content: new Text("Nothing found!"),
//           duration: const Duration(milliseconds: 500)));
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       children: <Widget>[
//         Container(
//           height: 200.0,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Container(
//                   height: 50.0,
//                   width: 300.0,
//                   child: TextField(
//                     decoration: InputDecoration(hintText: "Name"),
//                     onChanged: (value) {
//                       setState(() {
//                         userSave.name = value;
//                       });
//                     },
//                   )),
//               Container(
//                   height: 50.0,
//                   width: 300.0,
//                   child: TextField(
//                     decoration: InputDecoration(hintText: "Age"),
//                     onChanged: (value) {
//                       setState(() {
//                         userSave.age = value;
//                       });
//                     },
//                   )),
//               Container(
//                   height: 50.0,
//                   width: 300.0,
//                   child: TextField(
//                     decoration: InputDecoration(hintText: "Location"),
//                     onChanged: (value) {
//                       setState(() {
//                         userSave.location = value;
//                       });
//                     },
//                   )),
//             ],
//           ),
//         ),
//         Container(
//           height: 80.0,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               RaisedButton(
//                 onPressed: () {
//                   sharedPref.save("user", userSave);
//                   Scaffold.of(context).showSnackBar(SnackBar(
//                       content: new Text("Saved!"),
//                       duration: const Duration(milliseconds: 500)));
//                 },
//                 child: Text('Save', style: TextStyle(fontSize: 20)),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   loadSharedPrefs();
//                 },
//                 child: Text('Load', style: TextStyle(fontSize: 20)),
//               ),
//               RaisedButton(
//                 onPressed: () {
//                   sharedPref.remove("user");
//                   Scaffold.of(context).showSnackBar(SnackBar(
//                       content: new Text("Cleared!"),
//                       duration: const Duration(milliseconds: 500)));
//                   setState(() {
//                     userLoad = User();
//                   });
//                 },
//                 child: Text('Clear', style: TextStyle(fontSize: 20)),
//               ),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 300.0,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               Text("Name: " + (userLoad.name ?? ""),
//                   style: TextStyle(fontSize: 16)),
//               Text("Age: " + (userLoad.age ?? ""),
//                   style: TextStyle(fontSize: 16)),
//               Text("Location: " + (userLoad.location ?? ""),
//                   style: TextStyle(fontSize: 16)),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }



// import 'package:shared_preferences/shared_preferences.dart';
// import 'dart:convert';

// class SharedPref {
//   read(String key) async {
//     final prefs = await SharedPreferences.getInstance();
//     return json.decode(prefs.getString(key));
//   }

//   save(String key, value) async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.setString(key, json.encode(value));
//   }

//   remove(String key) async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.remove(key);
//   }
// }



// class User {
//   String name;
//   String age;
//   String location;

//   User();

//   User.fromJson(Map<String, dynamic> json)
//       : name = json['name'],
//         age = json['age'],
//         location = json['location'];

//   Map<String, dynamic> toJson() => {
//         'name': name,
//         'age': age,
//         'location': location,
//       };
// }