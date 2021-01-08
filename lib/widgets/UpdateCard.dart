import 'package:cp77_gpm_ui/util/Scrape.dart';
import 'package:cp77_gpm_ui/widgets/EventCard.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

class UpdateCard extends StatefulWidget {
  UpdateCard({Key key}) : super(key: key);

  @override
  _UpdateCardState createState() => _UpdateCardState();
}

class _UpdateCardState extends State<UpdateCard> {
  bool loaded = false;

  List<News> news = [];

  @override
  void initState() {
    fetchCyberpunkNews().then((first) {
      fetchRelease().then((second) {
        List<News> n = [...first, ...second];
        n.sort((a, b) => b.time.compareTo(a.time));
        setState(() {
          loaded = true;
          news = n;
        });
      });
    }).catchError((e) {
      print('Error fetching cyberpunk news: $e');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children;

    if (!loaded) {
      children = [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularProgressIndicator(),
          ],
        ),
      ];
    } else {
      children = List<Widget>.from(news.map((element) {
        return EventCard(
          title: element.title,
          subtitle: DateFormat('yyyy-MM-dd').format(element.time.toLocal()),
          icon: Icon((element.url.contains('github')) ? Icons.new_releases : Icons.launch),
          onClick: () async {
            if (await canLaunch(element.url)) {
              await launch(element.url);
            }
          },
        );
      }));
    }

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
              children: children,
            ),
          ),
        ),
      ],
    );
  }
}
