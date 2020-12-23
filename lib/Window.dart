import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:cp77_gpm_ui/ContentPanel.dart';
import 'package:cp77_gpm_ui/pages/Settings.dart';
import 'package:cp77_gpm_ui/util/CurrentRouteProvider.dart';
import 'package:cp77_gpm_ui/widgets/TitleBar.dart';
import 'package:flutter/material.dart';

class Window extends StatefulWidget {
  Window({Key key}) : super(key: key);

  @override
  _WindowState createState() => _WindowState();
}

class _WindowState extends State<Window> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WindowBorder(
        color: Colors.blue,
        width: 1,
        child: Column(
          children: [
            TitleBar(
              navigatorKey: navigatorKey,
            ),
            Expanded(
              child: Navigator(
                key: navigatorKey,
                initialRoute: '/',
                onGenerateRoute: (RouteSettings routeSettings) {
                  switch (routeSettings.name) {
                    case '/':
                      return ScaleRoute(page: ContentPanel());
                      break;
                    case '/settings':
                      return ScaleRoute(page: Settings());
                      break;
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//https://medium.com/flutter-community/everything-you-need-to-know-about-flutter-page-route-transition-9ef5c1b32823
class ScaleRoute extends PageRouteBuilder {
  final Widget page;
  ScaleRoute({this.page})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              page,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              ScaleTransition(
            scale: Tween<double>(
              begin: 0.0,
              end: 1.0,
            ).animate(
              CurvedAnimation(
                parent: animation,
                curve: Curves.fastOutSlowIn,
              ),
            ),
            child: child,
          ),
        );
}
