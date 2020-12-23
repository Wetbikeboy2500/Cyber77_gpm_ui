import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:cp77_gpm_ui/util/CurrentRouteProvider.dart';
import 'package:cp77_gpm_ui/widgets/WindowButtons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleBar extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const TitleBar({Key key, this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Theme.of(context).primaryColor,
      child: WindowTitleBarBox(
        child: Row(
          children: [
            WindowButton(
              padding: const EdgeInsets.only(bottom: 0),
              iconBuilder: (context) {
                return Icon(
                  Icons.settings,
                  size: 20,
                );
              },
              onPressed: () {
                print(context.read<CurrentRouteProvider>().settings);
                if (context.read<CurrentRouteProvider>().settings) {
                  navigatorKey.currentState.pop();
                  context.read<CurrentRouteProvider>().route = '';
                } else {
                  navigatorKey.currentState.pushNamed('/settings');
                  context.read<CurrentRouteProvider>().route = '/settings';
                }
              },
            ),
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
