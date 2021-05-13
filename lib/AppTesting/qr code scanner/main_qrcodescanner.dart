import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kit_360/AppTesting/qr code scanner/widgets/button_widget.dart';
import 'package:kit_360/AppTesting/qr code scanner/pages/qrcode_scan_page.dart';
import 'package:kit_360/AppTesting/qr code scanner/pages/qrcode_create_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
}

class QrCodeScan extends StatelessWidget {
  static final String title = 'QR Code Scanner';

  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: title,
    theme: ThemeData(
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.black,
    ),
    home: MainPage(title: title),
  );
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({
    @required this.title,
  });

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(widget.title),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ButtonWidget(
            text: 'Create QR Code',
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => QRCreatePage(),
            )),
          ),
          const SizedBox(height: 32),
          ButtonWidget(
            text: 'Scan QR Code',
            onClicked: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => QRScanPage(),
            )),
          ),
        ],
      ),
    ),
  );
}