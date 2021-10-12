// import 'package:avatar_glow/avatar_glow.dart';
// import 'package:clipboard/clipboard.dart';
// import 'package:flutter/material.dart';
// import 'package:kit_360/AppTesting/Speech%20To%20Text/speech_api.dart';
// import 'commands.dart';
//
// class SpeechToTextHome extends StatefulWidget {
//   @override
//   _SpeechToTextHomeState createState() => _SpeechToTextHomeState();
// }
//
// class _SpeechToTextHomeState extends State<SpeechToTextHome> {
//   String text = 'Press the button and start speaking';
//   bool isListening = false;
//
//   @override
//   Widget build(BuildContext context) => Scaffold(
//     appBar: AppBar(
//       title: Text("SPEECH TO TEXT"),
//       centerTitle: true,
//       actions: [
//         Builder(
//           builder: (context) => IconButton(
//             icon: Icon(Icons.content_copy),
//             onPressed: () async {
//               await FlutterClipboard.copy(text);
//               Scaffold.of(context).showSnackBar(
//                 SnackBar(content: Text('✓   Copied to Clipboard')),
//               );
//             },
//           ),
//         ),
//       ],
//     ),
//     body: SingleChildScrollView(
//       reverse: true,
//       padding: const EdgeInsets.all(30).copyWith(bottom: 150),
//     ),
//     floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//     floatingActionButton: AvatarGlow(
//       animate: isListening,
//       endRadius: 75,
//       glowColor: Theme.of(context).primaryColor,
//       child: FloatingActionButton(
//         child: Icon(isListening ? Icons.mic : Icons.mic_none, size: 36),
//         onPressed: toggleRecording,
//       ),
//     ),
//   );
//
//   Future toggleRecording() => SpeechApi.toggleRecording(
//     onResult: (text) => setState(() => this.text = text),
//     onListening: (isListening) {
//       setState(() => this.isListening = isListening);
//
//       if (!isListening) {
//         Future.delayed(Duration(seconds: 1), () {
//           Utils.scanText(text);
//         });
//       }
//     },
//   );
// }