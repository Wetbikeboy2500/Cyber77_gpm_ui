import 'package:flutter/material.dart';

class MenuItem extends StatelessWidget {
  final String name;

  const MenuItem({Key key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      alignment: Alignment.center,
      child: Text(name),
    );
  }
}
