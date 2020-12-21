import 'package:cp77_gpm_ui/ContentPanel.dart';
import 'package:cp77_gpm_ui/pages/Settings.dart';
import 'package:flutter/material.dart';
import 'package:bitsdojo_window/bitsdojo_window.dart';

void main() {
  runApp(MyApp());
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

var borderColor = Color(0xFF805306);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Color.fromRGBO(34, 34, 34, 1),
        backgroundColor: Color.fromRGBO(34, 34, 34, 1),
        primaryColor: Color.fromRGBO(41, 41, 41, 1),
        accentColor: Color.fromRGBO(41, 41, 41, 1),
        brightness: Brightness.dark,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => ContentPanel(),
        '/settings': (context) => Settings(),
      },
    );
  }
}
