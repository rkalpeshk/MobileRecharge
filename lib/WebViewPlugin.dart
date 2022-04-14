import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'package:google_fonts/google_fonts.dart';



class WebViewExample extends StatelessWidget {

  TextEditingController controller = TextEditingController();
  FlutterWebviewPlugin flutterWebviewPlugin = FlutterWebviewPlugin();

  final String   title;
  final String  selectedUrl;

  WebViewExample({
    @required this.title,
    @required this.selectedUrl,
  });


    @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebviewScaffold(
//      appBar: AppBar(
//        title: Text(title,
//        style: GoogleFonts.exo2(
//            fontSize: 25
//        ),
//        ),
//        titleSpacing: 0.0,
//      ),

        url: selectedUrl,
        withZoom: true,
        withJavascript: true,
        scrollBar: true,
      ),
    );
  }
}



