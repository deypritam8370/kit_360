import 'package:flutter/material.dart';
import 'package:kit_360/AppTesting/to%20do%20list/widgets/add_todo_dialog_widget.dart';
import 'package:kit_360/AppTesting/to%20do%20list/widgets/completed_list_widget.dart';
import 'package:kit_360/AppTesting/to%20do%20list/widgets/todo_list_widget.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final tabs = [
      TodoListWidget(),
      CompletedListWidget(),
    ];
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white.withOpacity(0.7),
        selectedItemColor: Colors.white,
        currentIndex: selectedIndex,
        onTap: (index) => setState(() {
          selectedIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check_outlined),
            label: 'Todos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.done, size: 28),
            label: 'Completed',
          ),
        ],
      ),
      body: tabs[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        onPressed: () => showDialog(
          context: context,
          builder: (context) => AddTodoDialogWidget(),
          barrierDismissible: true,
        ),
        child: Icon(Icons.add),
      ),
    );
  }
}
