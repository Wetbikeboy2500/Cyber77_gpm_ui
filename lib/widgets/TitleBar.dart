import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:cp77_gpm_ui/widgets/WindowButtons.dart';
import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: WindowTitleBarBox(
        child: Row(
          children: [
            MoveWindow(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 5,
                    bottom: 5,
                  ),
                  child: Text(
                    'Game Package Manager',
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
            Expanded(
              child: MoveWindow(),
            ),
            WindowButtons(),
          ],
        ),
      ),
    );
  }
}
