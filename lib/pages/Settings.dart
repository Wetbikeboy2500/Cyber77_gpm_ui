import 'package:cp77_gpm_ui/widgets/PageContainer.dart';
import 'package:cp77_gpm_ui/widgets/PageHeader.dart';
import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  Settings({Key key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      child: Column(
        children: [
          PageHeader(
            name: 'Settings',
            button: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  RaisedButton(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 5),
                          child: Icon(Icons.people),
                        ),
                        Text('About'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
