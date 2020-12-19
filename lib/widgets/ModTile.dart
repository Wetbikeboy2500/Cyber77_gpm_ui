//for displaying mods with their image, title, and author
import 'package:flutter/material.dart';

class ModTile extends StatelessWidget {
  final String name;
  final String author;
  const ModTile({Key key, this.name, this.author}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
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
    );
  }
}
