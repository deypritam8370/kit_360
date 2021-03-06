import 'package:flutter/material.dart';
import 'package:flutter_flashlight/flutter_flashlight.dart';
import 'package:kit_360/ThemeUI/change_theme_button_widget.dart';

class TorchUI extends StatefulWidget {
  @override
  _TorchUIState createState() => _TorchUIState();
}

class _TorchUIState extends State<TorchUI> {
  var isON = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flashlight'),
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ChangeThemeButtonWidget(),
          ),
        ],
        actionsIconTheme:
            IconThemeData(size: 26.0, color: Colors.grey, opacity: 10.0),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100),
            SizedBox(
              width: 100,
              height: 100,
              child: Image.asset('assets/utility/torch.png'),
            ),
            Switch(
              onChanged: (value) {
                setState(() {
                  isON = !isON;
                  isON ? Flashlight.lightOn() : Flashlight.lightOff();
                });
              },
              value: isON,
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:flutter/services.dart';
// import 'package:flashlight/flashlight.dart';
//
// void main() => runApp(TorchUI());
//
// class TorchUI extends StatefulWidget {
//   @override
//   _TorchUIState createState() => _TorchUIState();
// }
//
// class _TorchUIState extends State<TorchUI> {
//   bool _hasFlashlight = false;
//
//   @override
//   initState() {
//     super.initState();
//     initFlashlight();
//   }
//
//   initFlashlight() async {
//     bool hasFlash = await Flashlight.hasFlashlight;
//     print("Device has flash ? $hasFlash");
//     setState(() {
//       _hasFlashlight = hasFlash;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Flashlight Plugin example app'),
//         ),
//         body: Center(
//             child: Column(
//               children: <Widget>[
//                 Text(_hasFlashlight
//                     ? 'Your phone has a Flashlight.'
//                     : 'Your phone has no Flashlight.'),
//                 ElevatedButton(
//                   child: Text('Turn on'),
//                   onPressed: () => Flashlight.lightOn(),
//                 ),
//                 ElevatedButton(
//                   child: Text('Turn off'),
//                   onPressed: () => Flashlight.lightOff(),
//                 )
//               ],
//             )),
//       ),
//     );
//   }
// }
