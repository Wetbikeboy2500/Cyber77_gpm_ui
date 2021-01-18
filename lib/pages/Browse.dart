import 'dart:io';

import 'package:cp77_gpm_ui/util/PageProvider.dart';
import 'package:cp77_gpm_ui/util/Scrape.dart';
import 'package:cp77_gpm_ui/widgets/GameTile.dart';
import 'package:cp77_gpm_ui/widgets/ModsCard.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Browse extends StatefulWidget {
  Browse({Key key}) : super(key: key);

  @override
  _BrowseState createState() => _BrowseState();
}

class _BrowseState extends State<Browse> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final int count = screenWidth < 630
        ? 4
        : screenWidth < 750
            ? 5
            : screenWidth < 850
                ? 6
                : screenWidth < 1000
                    ? 7
                    : screenWidth < 1250
                        ? 8
                        : screenWidth < 1350
                            ? 9
                            : 10;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              'Games',
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
          Expanded(
            child: GridView.count(
                crossAxisCount: count,
                childAspectRatio: (screenWidth / count) /
                    (((screenWidth / count) * 1.55) + 20),
                children: [
                  GameTile(
                    name: 'Cyberpunk 2077',
                    onClick: () {
                      //https://gamepreorders.com/wp-content/uploads/2019/06/cover-art-6.jpg
                      Navigator.pushNamed(
                        context,
                        '/game',
                        arguments: <String, String>{
                          'name': 'Cyberpunk 2077',
                        },
                      );
                    },
                  ),
                ]),
          ),
        ],
      ),
    );

    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    'Browse',
                    style: Theme.of(context).textTheme.headline3,
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text('Open Game'),
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/game',
                      arguments: <String, String>{
                        'name': 'Cyberpunk 2077',
                      },
                    );
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
