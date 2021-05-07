import 'dart:math';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kit_360/AppTesting/notes/models/note.dart';
import 'package:kit_360/AppTesting/notes/pages/edit.dart';
import 'package:kit_360/AppTesting/notes/services/db.dart';
import 'package:kit_360/AppTesting/notes/widgets/loading.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  List<Note> notes;
  bool loading = true;

  @override
  void initState() {
    super.initState();
    refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.blueGrey[700],
      appBar: AppBar(
        title: Text(
          'NOTES',
          //style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ChangeThemeButtonWidget(),
          ),
        ],
        actionsIconTheme:
            IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
        //backgroundColor: Colors.blueGrey[900],
        //foregroundColor: Colors.black,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() => loading = true);
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Edit(note: new Note()))).then((v) {
            refresh();
          });
        },
      ),
      body: loading
          ? Loading()
          : ListView.builder(
              padding: EdgeInsets.all(10.0),
              itemCount: notes.length,
              itemBuilder: (context, index) {
                Note note = notes[index];
                return Card(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)]
                      .shade200,
                  child: ListTile(
                    title: Text(note.title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        )),
                    subtitle: Text(
                      note.content,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.black,
                      ),
                    ),
                    onTap: () {
                      setState(() => loading = true);
                      Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Edit(note: note)))
                          .then((v) {
                        refresh();
                      });
                    },
                  ),
                );
              },
            ),
    );
  }

  Future<void> refresh() async {
    notes = await DB().getNotes();
    setState(() => loading = false);
  }
}
