//for displaying mods with their image, title, and author
import 'package:flutter/material.dart';

class GameTile extends StatelessWidget {
  final String name;
  final Function onClick;
  const GameTile({Key key, this.name, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 125 / 266,
      child: Card(
        elevation: 1,
        color: Theme.of(context).primaryColor,
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onClick,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.network(
                  'https://gamepreorders.com/wp-content/uploads/2019/06/cover-art-6.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              ListTile(
                visualDensity: VisualDensity(horizontal: 0, vertical: -3),
                title: Text(name),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
