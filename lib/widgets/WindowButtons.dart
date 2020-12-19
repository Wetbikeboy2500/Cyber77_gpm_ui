
import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

class WindowButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: getButtonColors(context)),
        MaximizeWindowButton(colors: getButtonColors(context)),
        CloseWindowButton(colors: getCloseButtonColors(context)),
      ],
    );
  }

  WindowButtonColors getButtonColors(BuildContext context) {
    return WindowButtonColors(
      iconNormal: Colors.grey,
      mouseOver: Theme.of(context).hoverColor,
      mouseDown: Theme.of(context).primaryColor,
      iconMouseOver: Colors.white,
      iconMouseDown: Colors.white,
    );
  }

  WindowButtonColors getCloseButtonColors(BuildContext context) {
    return WindowButtonColors(
      mouseOver: Colors.red[700],
      mouseDown: Colors.red[900],
      iconNormal: Colors.grey,
      iconMouseOver: Colors.white,
    );
  }
}
