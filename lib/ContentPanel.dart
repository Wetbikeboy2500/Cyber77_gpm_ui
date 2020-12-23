import 'package:cp77_gpm_ui/pages/Dashboard.dart';
import 'package:cp77_gpm_ui/pages/Home.dart';
import 'package:cp77_gpm_ui/pages/Mods.dart';
import 'package:cp77_gpm_ui/widgets/MenuItem.dart';
import 'package:flutter/material.dart';

class ContentPanel extends StatefulWidget {
  ContentPanel({Key key}) : super(key: key);

  @override
  _ContentPanelState createState() => _ContentPanelState();
}

class _ContentPanelState extends State<ContentPanel> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          Material(
            color: Theme.of(context).primaryColor,
            child: Row(
              children: [
                Container(
                  height: 35,
                  width: 150,
                  padding: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton(
                      isExpanded: true,
                      value: 1,
                      items: [
                        DropdownMenuItem(
                          child: Text('Cyberpunk 2077'),
                          value: 1,
                        ),
                      ],
                      onChanged: (int value) {},
                    ),
                  ),
                ),
                Expanded(
                  child: TabBar(
                    tabs: [
                      MenuItem(name: 'Home'),
                      MenuItem(name: 'Dashboard'),
                      MenuItem(name: 'Mods'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: TabBarView(
                children: [
                  Home(),
                  Dashboard(),
                  Mods(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
