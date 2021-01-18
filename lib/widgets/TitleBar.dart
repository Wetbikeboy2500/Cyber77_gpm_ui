import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:cp77_gpm_ui/util/PageProvider.dart';
import 'package:cp77_gpm_ui/widgets/WindowButtons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class TitleBar extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  const TitleBar({Key key, this.navigatorKey}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isWindows) {
      return Material(
        color: Theme.of(context).primaryColor,
        child: WindowTitleBarBox(
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 5,
                        ),
                        child: Text(
                          'Game Package Manager',
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  (context.watch<PageProvider>().enableBack)
                      ? WindowButton(
                          padding: const EdgeInsets.only(bottom: 0),
                          iconBuilder: (context) {
                            return Icon(
                              Icons.arrow_back,
                              color: Colors.grey,
                              size: 20,
                            );
                          },
                          onPressed: () {
                            context.read<PageProvider>().toBrowse();
                          },
                        )
                      : Container(),
                  MoveWindow(
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 5,
                          bottom: 5,
                        ),
                        child: Text(
                          context.watch<PageProvider>().name,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: MoveWindow(),
                  ),
                  WindowButton(
                    padding: const EdgeInsets.only(bottom: 0),
                    iconBuilder: (context) {
                      return Icon(
                        Icons.settings,
                        color: Colors.grey,
                        size: 20,
                      );
                    },
                    onPressed: () {
                      context.read<PageProvider>().toggleSettings();
                    },
                  ),
                  WindowButtons(),
                ],
              ),
            ],
          ),
        ),
      );
    } else {
      return Material(
        color: Theme.of(context).primaryColor,
        child: SizedBox(
          height: 30,
          child: Row(
            children: [
              InkWell(
                child: Icon(
                  Icons.settings,
                  size: 20,
                ),
                onTap: () {
                  context.read<PageProvider>().toggleSettings();
                },
              ),
              Container(
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
                child: Container(),
              ),
            ],
          ),
        ),
      );
    }
  }
}
