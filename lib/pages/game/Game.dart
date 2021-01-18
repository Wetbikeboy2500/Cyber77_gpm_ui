import 'package:cp77_gpm_ui/pages/game/Dashboard.dart';
import 'package:cp77_gpm_ui/pages/game/Home.dart';
import 'package:cp77_gpm_ui/pages/game/Mods.dart';
import 'package:cp77_gpm_ui/widgets/MenuItem.dart';
import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  Game({Key key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Column(
          children: [
            Material(
              color: Theme.of(context).primaryColor,
              child: Row(
                children: [
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
      ),
    );
  }
}
