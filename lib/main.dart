import 'package:cp77_gpm_ui/Window.dart';
import 'package:cp77_gpm_ui/util/PageProvider.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:provider/provider.dart';
import 'dart:io' show Platform;

void main() {
  runApp(MyApp());
  if (Platform.isWindows) {
    doWhenWindowReady(() {
      var win = appWindow;
      var initialSize = Size(600, 500);
      win.minSize = initialSize;
      win.size = initialSize;
      win.alignment = Alignment.center;
      win.title = "Custom window with Flutter";
      win.show();
    });
  }
}

var borderColor = Color(0xFF805306);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color.fromRGBO(33, 33, 33, 1),
        backgroundColor: Color.fromRGBO(33, 33, 33, 1),
        primaryColor: Color.fromRGBO(50, 50, 50, 1),
        accentColor: Color.fromRGBO(0, 173, 181, 1),
        brightness: Brightness.dark,
      ),
      home: ChangeNotifierProvider(
        create: (_) => PageProvider(),
        child: Window(),
      ),
    );
  }
}
