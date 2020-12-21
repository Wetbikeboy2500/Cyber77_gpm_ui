import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:cp77_gpm_ui/widgets/TitleBar.dart';
import 'package:flutter/material.dart';

class ExpandedPage extends StatelessWidget {
  final Widget child;

  const ExpandedPage({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        color: Colors.blue,
        width: 1,
        child: Column(
          children: [
            TitleBar(),
            Expanded(child: child),
          ],
        ),
      ),
    );
  }
}
