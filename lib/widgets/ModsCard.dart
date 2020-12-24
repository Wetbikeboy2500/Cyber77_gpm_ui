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
            crossAxisCount: screenWidth < 850
                ? 4
                : screenWidth < 950
                    ? 5
                    : screenWidth < 1050
                        ? 6
                        : 8,
            childAspectRatio: 0.65,
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
