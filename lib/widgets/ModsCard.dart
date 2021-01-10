import 'package:cp77_gpm_ui/widgets/ModTile.dart';
import 'package:flutter/material.dart';

class ModsCard extends StatefulWidget {
  ModsCard({Key key}) : super(key: key);

  @override
  _ModsCardState createState() => _ModsCardState();
}

class _ModsCardState extends State<ModsCard> {
  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    final int count = screenWidth < 850
        ? 4
        : screenWidth < 950
            ? 5
            : screenWidth < 1150
                ? 6
                : screenWidth < 1450
                    ? 7
                    : screenWidth < 1750
                        ? 8
                        : 10;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            'Top Mods',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: count,
            childAspectRatio:
                (screenWidth / count) / (((screenWidth / count) * 1.55) + 20),
            children: List.filled(
              50,
              ModTile(
                name: 'Name',
                author: 'author',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
