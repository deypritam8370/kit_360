// import 'package:flutter/material.dart';
// import 'package:torch_compat/torch_compat.dart';
//
// void main() => runApp(TorchScreen());
//
// class TorchScreen extends StatefulWidget {
//   @override
//   _TorchScreenState createState() => _TorchScreenState();
// }
//
// class _TorchScreenState extends State<TorchScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Torch plugin example app'),
//         ),
//         body: Center(
//           child: Column(
//             children: <Widget>[
//               ElevatedButton(
//                 child: Text('Turn on'),
//                 onPressed: () {
//                   TorchCompat.turnOn();
//                 },
//               ),
//               ElevatedButton(
//                 child: Text('Turn off'),
//                 onPressed: () {
//                   TorchCompat.turnOff();
//                 },
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     // Mandatory for Camera 1 on Android
//     TorchCompat.dispose();
//     super.dispose();
//   }
// }
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: TorchUI(),
//     );
//   }
// }