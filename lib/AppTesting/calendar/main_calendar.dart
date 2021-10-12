// import 'dart:math';
//
// import 'package:flutter/material.dart';
// import 'package:table_calendar/table_calendar.dart';
// import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';
//
// class MyCalendar extends StatefulWidget {
//   @override
//   HomePageState createState() => HomePageState();
// }
//
// class HomePageState extends State<MyCalendar> {
//   CalendarController _controller;
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _controller = CalendarController();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Calendar'),
//         actions: <Widget>[
//           Padding(
//             padding: EdgeInsets.only(right: 20.0),
//             child: ChangeThemeButtonWidget(),
//           ),
//         ],
//         actionsIconTheme:
//             IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             TableCalendar(
//               initialCalendarFormat: CalendarFormat.month,
//               calendarStyle: CalendarStyle(
//                   todayColor: Colors.orange,
//                   selectedColor: Colors
//                       .primaries[Random().nextInt(Colors.primaries.length)]
//                       .shade200,
//                   todayStyle: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 18.0,
//                     /*color: Colors.white*/
//                   )),
//               headerStyle: HeaderStyle(
//                 centerHeaderTitle: true,
//                 formatButtonDecoration: BoxDecoration(
//                   color: Colors.orange,
//                   borderRadius: BorderRadius.circular(20.0),
//                 ),
//                 formatButtonTextStyle: TextStyle(color: Colors.white),
//                 formatButtonShowsNext: false,
//               ),
//               startingDayOfWeek: StartingDayOfWeek.monday,
//               // onDaySelected: (date, events) {
//               //   print(date.toIso8601String());
//               // },
//               builders: CalendarBuilders(
//                 selectedDayBuilder: (context, date, events) => Container(
//                     margin: const EdgeInsets.all(4.0),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         color: Colors
//                             .primaries[
//                                 Random().nextInt(Colors.primaries.length)]
//                             .shade200,
//                         borderRadius: BorderRadius.circular(10.0)),
//                     child: Text(
//                       date.day.toString(),
//                       style: TextStyle(color: Colors.black),
//                     )),
//                 todayDayBuilder: (context, date, events) => Container(
//                     margin: const EdgeInsets.all(4.0),
//                     alignment: Alignment.center,
//                     decoration: BoxDecoration(
//                         color: Colors.orange,
//                         borderRadius: BorderRadius.circular(10.0)),
//                     child: Text(
//                       date.day.toString(),
//                       style: TextStyle(color: Colors.white),
//                     )),
//               ),
//               calendarController: _controller,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
