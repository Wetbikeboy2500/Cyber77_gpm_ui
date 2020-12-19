import 'package:cp77_gpm_ui/widgets/ModTile.dart';
import 'package:cp77_gpm_ui/widgets/PageContainer.dart';
import 'package:cp77_gpm_ui/widgets/PageHeader.dart';
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
    return PageContainer(
      child: Column(
        children: [
          PageHeader(name: 'Home'),
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
                    margin: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Text(
                          'News',
                          style: Theme.of(context).textTheme.headline4,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  SelectableText(
                                      lipsum.createParagraph(numSentences: 25)),
                                  Container(
                                    height: 10,
                                  ),
                                  Text(
                                      lipsum.createParagraph(numSentences: 10)),
                                  Container(
                                    height: 10,
                                  ),
                                  Text(
                                      lipsum.createParagraph(numSentences: 10)),
                                  Container(
                                    height: 10,
                                  ),
                                  Text(
                                      lipsum.createParagraph(numSentences: 10)),
                                  Container(
                                    height: 10,
                                  ),
                                  Text(
                                      lipsum.createParagraph(numSentences: 10)),
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
                    margin:
                        const EdgeInsets.only(top: 20, right: 20, bottom: 20),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Top 10 Mods',
                                  style: Theme.of(context).textTheme.headline4,
                                ),
                                Expanded(
                                  child: ListView.builder(
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 10,
                                    itemExtent: 200,
                                    itemBuilder:
                                        (BuildContext context, int index) =>
                                            ModTile(
                                      name: 'Name',
                                      author: 'author',
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 2.0,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            margin: const EdgeInsets.only(top: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
