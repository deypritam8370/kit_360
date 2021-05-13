import 'package:flutter/material.dart';
import 'package:kit_360/AppTesting/to%20do%20list/page/to_do_list_home.dart';
import 'package:kit_360/AppTesting/to%20do%20list/provider/todos.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';
import 'package:provider/provider.dart';

class ToDoMain extends StatelessWidget {
  static final String title = 'Todo App';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => TodosProvider(),
    child: Scaffold(
      appBar: AppBar(
        title: Text('TO DO LIST'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ChangeThemeButtonWidget(),
          ),
        ],
      ),
      body: ToDoList(),
    ),
  );
}
