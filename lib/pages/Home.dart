import 'package:cp77_gpm_ui/widgets/ModsCard.dart';
import 'package:cp77_gpm_ui/widgets/UpdateCard.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _calcFlexMods(double width) {
    if (width <= 835) {
      return 2;
    }

    if (width <= 1050) {
      return 4;
    }

    return 5;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          child: UpdateCard(),
        ),
        Expanded(
          flex: _calcFlexMods(width),
          child: ModsCard(),
        ),
      ],
    );
  }
}
