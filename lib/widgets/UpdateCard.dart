import 'package:cp77_gpm_ui/widgets/EventCard.dart';
import 'package:flutter/material.dart';

class UpdateCard extends StatefulWidget {
  UpdateCard({Key key}) : super(key: key);

  @override
  _UpdateCardState createState() => _UpdateCardState();
}

class _UpdateCardState extends State<UpdateCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(5),
          child: Text(
            'Updates & News',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                EventCard(
                  title: 'HOTFIX 1.06',
                  subtitle: 'Fixes some issues',
                  icon: Icon(Icons.launch),
                ),
                EventCard(
                  title: 'GPM UI 0.0.1',
                  subtitle: 'First build of UI',
                  icon: Icon(Icons.launch),
                  onClick: () {
                    print('Hello world');
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
