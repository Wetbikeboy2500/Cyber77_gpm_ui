import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:cp77_gpm_ui/pages/Browse.dart';
import 'package:cp77_gpm_ui/pages/Settings.dart';
import 'package:cp77_gpm_ui/pages/game/Game.dart';
import 'package:cp77_gpm_ui/util/PageProvider.dart';
import 'package:cp77_gpm_ui/util/pageAnimations/ScaleRoute.dart';
import 'package:cp77_gpm_ui/util/pageAnimations/SlideRoute.dart';
import 'package:cp77_gpm_ui/widgets/TitleBar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Window extends StatefulWidget {
  Window({Key key}) : super(key: key);

  @override
  _WindowState createState() => _WindowState();
}

class _WindowState extends State<Window> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  void initState() {
    super.initState();
    context.read<PageProvider>().navigatorKey = navigatorKey;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              (Platform.isWindows)
                  ? WindowTitleBarBox()
                  : SizedBox(
                      height: 30,
                    ),
              Expanded(
                child: Navigator(
                  key: navigatorKey,
                  initialRoute: '/',
                  onGenerateRoute: (RouteSettings routeSettings) {
                    switch (routeSettings.name) {
                      case '/':
                        return ScaleRoute(
                          page: Browse(),
                        );
                        break;
                      case '/game':
                        var args =
                            routeSettings.arguments as Map<String, String>;
                        context.read<PageProvider>().setTitle(args['name']);

                        return ScaleRoute(
                          page: Game(),
                        );
                        break;
                      case '/settings':
                        return SlideRoute(
                          page: Settings(),
                          transition: SlideTransitions.SlideTop,
                        );
                        break;
                      default:
                        return null;
                    }
                  },
                ),
              ),
            ],
          ),
          TitleBar(
            navigatorKey: navigatorKey,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 1,
              color: Theme.of(context).accentColor,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 1,
              color: Theme.of(context).accentColor,
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              width: 1,
              color: Theme.of(context).accentColor,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 1,
              color: Theme.of(context).accentColor,
            ),
          ),
        ],
      ),
    );
  }
}
