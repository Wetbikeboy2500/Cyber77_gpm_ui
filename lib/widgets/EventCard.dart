import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const EventCard({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Theme.of(context).primaryColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
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
      ),
    );
  }
}
