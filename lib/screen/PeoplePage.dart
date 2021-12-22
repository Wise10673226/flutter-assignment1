import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PeoplePage extends StatelessWidget {
  const PeoplePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('People'),
      ),
      body: WebView(
        initialUrl: 'https://google.com',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
