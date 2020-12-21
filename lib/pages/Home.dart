import 'package:cp77_gpm_ui/widgets/ModTile.dart';
import 'package:flutter/material.dart';
import 'package:lipsum/lipsum.dart' as lipsum;

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.0,
              color: Theme.of(context).primaryColor,
            ),
          ),
          child: Column(
            children: [
              Text(
                'Top Mods',
                style: Theme.of(context).textTheme.headline4,
              ),
              Container(
                constraints: BoxConstraints(
                  minHeight: 250,
                  maxHeight: 250,
                  minWidth: double.infinity,
                ),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemExtent: 200,
                  itemBuilder: (BuildContext context, int index) => ModTile(
                    name: 'Name',
                    author: 'author',
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 20, right: 10),
                  child: Column(
                    children: [
                      Text(
                        'Updates',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SelectableText(
                                    lipsum.createParagraph(numSentences: 25)),
                                Container(
                                  height: 10,
                                ),
                                Text(lipsum.createParagraph(numSentences: 10)),
                                Container(
                                  height: 10,
                                ),
                                Text(lipsum.createParagraph(numSentences: 10)),
                                Container(
                                  height: 10,
                                ),
                                Text(lipsum.createParagraph(numSentences: 10)),
                                Container(
                                  height: 10,
                                ),
                                Text(lipsum.createParagraph(numSentences: 10)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 2.0,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  margin: const EdgeInsets.only(top: 20, left: 10),
                  child: Column(
                    children: [
                      Text(
                        'News',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                SelectableText(
                                    lipsum.createParagraph(numSentences: 25)),
                                Container(
                                  height: 10,
                                ),
                                Text(lipsum.createParagraph(numSentences: 10)),
                                Container(
                                  height: 10,
                                ),
                                Text(lipsum.createParagraph(numSentences: 10)),
                                Container(
                                  height: 10,
                                ),
                                Text(lipsum.createParagraph(numSentences: 10)),
                                Container(
                                  height: 10,
                                ),
                                Text(lipsum.createParagraph(numSentences: 10)),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
