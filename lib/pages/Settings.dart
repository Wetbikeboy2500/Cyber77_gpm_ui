import 'dart:io';

import 'package:cp77_gpm_ui/util/PageProvider.dart';
import 'package:cp77_gpm_ui/util/Scrape.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  GlobalKey containerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
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
                    'Settings',
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
                  child: Text('Go back'),
                  onPressed: () {
                    context.read<PageProvider>().closeSettings();
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text('Exit app'),
                  onPressed: () {
                    exit(1);
                  },
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                child: RaisedButton(
                  child: Text('Test'),
                  onPressed: () async {
                    print(await fetchRelease());
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
