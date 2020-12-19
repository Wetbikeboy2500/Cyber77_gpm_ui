import 'package:flutter/material.dart';

class PageHeader extends StatelessWidget {
  final String name;
  final Widget button;

  const PageHeader({
    Key key,
    this.name,
    this.button,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(
        children: [
          Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline3,
                )
              ],
            ),
          ),
          (button != null)
              ? button
              : Container(),
        ],
      ),
      Divider(
        color: Theme.of(context).primaryColor,
        thickness: 2,
        indent: 20,
        endIndent: 20,
      ),
    ]);
  }
}
