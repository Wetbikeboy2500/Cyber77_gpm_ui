import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cp77_gpm_ui/pages/Dashboard.dart';
import 'package:cp77_gpm_ui/pages/Home.dart';
import 'package:cp77_gpm_ui/pages/Mods.dart';
import 'package:cp77_gpm_ui/pages/Settings.dart';
import 'package:cp77_gpm_ui/util/PageTracker.dart';
import 'package:cp77_gpm_ui/widgets/WindowButtons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ContentPanel extends StatefulWidget {
  ContentPanel({Key key}) : super(key: key);

  @override
  _ContentPanelState createState() => _ContentPanelState();
}

class _ContentPanelState extends State<ContentPanel> {
  List<Function> _screens;

  @override
  void initState() {
    _screens = [
      () => Home(),
      () => Dashboard(),
      () => Mods(),
      () => Settings(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://i.pinimg.com/originals/1f/fc/bd/1ffcbd02fa2f7363c8471c68d432b90c.png',
            width: 300,
          ),
          Column(
            children: [
              WindowTitleBarBox(
                child: Row(
                  children: [
                    Expanded(
                      child: MoveWindow(),
                    ),
                    WindowButtons(),
                  ],
                ),
              ),
              Expanded(
                child: Consumer<PageTracker>(
                  builder: (context, tracker, child) {
                    return _screens[tracker.page].call();
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
