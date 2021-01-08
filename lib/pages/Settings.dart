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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Settings',
                style: Theme.of(context).textTheme.headline3,
              ),
              RaisedButton(
                child: Text('Exit'),
                onPressed: () {
                  context.read<PageProvider>().closeSettings();
                },
              ),
              RaisedButton(
                child: Text('Test'),
                onPressed: () async {
                  print(await fetchRelease());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
