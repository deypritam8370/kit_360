import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kit_360/AppTesting/notes/models/note.dart';
import 'package:kit_360/AppTesting/notes/services/db.dart';
import 'package:kit_360/AppTesting/notes/widgets/loading.dart';

class Edit extends StatefulWidget {
  final Note note;
  Edit({this.note});

  @override
  EditState createState() => EditState();
}

class EditState extends State<Edit> {
  TextEditingController title, content;
  bool loading = false, editmode = false;

  @override
  void initState() {
    super.initState();
    title = new TextEditingController(text: 'Sample title');
    content = new TextEditingController(text: 'Sample content');
    if (widget.note.id != null) {
      editmode = true;
      title.text = widget.note.title;
      content.text = widget.note.content;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.w,
      appBar: AppBar(
        //backgroundColor: Colors.blueGrey[900],
        //foregroundColor: Colors.white,
        title: Text(
          editmode ? 'EDIT' : 'NEW',
          style: TextStyle(
            //  color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.save),
            //color: Colors.white,
            onPressed: () {
              setState(() => loading = true);
              save();
            },
          ),
          if (editmode)
            IconButton(
              //color: Colors.white,
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() => loading = true);
                delete();
              },
            ),
        ],
      ),
      body: Container(
        //margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 100),
        //color: Colors.blueGrey[400],

        //.primaries[Random().nextInt(Colors.primaries.length)].shade200,
        child: loading
            ? Loading()
            : ListView(
                padding: EdgeInsets.all(13.0),
                children: <Widget>[
                  TextField(
                    controller: title,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: content,
                    maxLines: 57,
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  Future<void> save() async {
    if (title.text != '') {
      widget.note.title = title.text;
      widget.note.content = content.text;
      if (editmode)
        await DB().update(widget.note);
      else
        await DB().add(widget.note);
    }
    setState(() => loading = false);
  }

  Future<void> delete() async {
    await DB().delete(widget.note);
    Navigator.pop(context);
  }
}
