import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final Function onClick;
  final Widget icon;

  const EventCard({
    Key key,
    this.title,
    this.subtitle,
    this.onClick,
    this.icon,
  }) : super(key: key);

  //TODO: add icons for when going to website or github
  @override
  Widget build(BuildContext context) {
    List<Widget> row = [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              subtitle,
              style: Theme.of(context)
                  .textTheme
                  .subtitle2
                  .apply(color: Theme.of(context).textTheme.caption.color),
            )
          ],
        ),
      ),
    ];

    if (icon != null) {
      row.add(icon);
    }

    return Card(
      color: Theme.of(context).primaryColor,
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: row,
          ),
        ),
        onTap: onClick,
      ),
    );
  }
}
