//for displaying mods with their image, title, and author
import 'package:flutter/material.dart';

class ModTile extends StatelessWidget {
  final String name;
  final String author;
  const ModTile({Key key, this.name, this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 125 / 266,
      child: Card(
        elevation: 1,
        color: Theme.of(context).primaryColor,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Expanded(
              child: Container(
                color: Colors.white,
              ),
            ),
            ListTile(
              visualDensity: VisualDensity(horizontal: 0, vertical: -3),
              title: Text(name),
              subtitle: Text(author),
            ),
          ],
        ),
      ),
    );
  }
}
