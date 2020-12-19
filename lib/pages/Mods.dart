import 'package:cp77_gpm_ui/widgets/PageContainer.dart';
import 'package:cp77_gpm_ui/widgets/PageHeader.dart';
import 'package:flutter/material.dart';

class Mods extends StatefulWidget {
  Mods({Key key}) : super(key: key);

  @override
  _ModsState createState() => _ModsState();
}

class _ModsState extends State<Mods> {
  @override
  Widget build(BuildContext context) {
    return PageContainer(
      child: Column(
        children: [
          PageHeader(name: 'Mods'),
        ],
      ),
    );
  }
}
