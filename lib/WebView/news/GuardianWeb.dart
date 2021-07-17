import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kit_360/WebView/Social_Media/Nav_Social_Media/facebook_nav.dart';
import 'package:webview_flutter/webview_flutter.dart';

class GuardianWeb extends StatelessWidget {
  final Completer<WebViewController> _controller =
  Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: Text('GUARDIAN'),
          actions: [NavigationControls(_controller.future)],
        ),
        body: Builder(
          builder: (BuildContext context) {
            return WebView(
              initialUrl: 'https://theguardian.com',
              javascriptMode: JavascriptMode.unrestricted,
              onWebViewCreated: (WebViewController webViewController) {
                _controller.complete(webViewController);
              },
              gestureNavigationEnabled: true,
            );
          },
        ),
      ),
    );
  }
}
