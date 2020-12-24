import 'package:cp77_gpm_ui/widgets/ModsCard.dart';
import 'package:cp77_gpm_ui/widgets/UpdateCard.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: UpdateCard(),
        ),
        Expanded(
          flex: 4,
          child: ModsCard(),
        ),
      ],
    );
  }
}
