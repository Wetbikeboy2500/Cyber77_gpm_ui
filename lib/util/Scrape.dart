//This is for web scrapping the cyberpunk website
import 'package:dio/dio.dart';
import 'package:html/parser.dart';
import 'package:intl/intl.dart';

Future scrape() async {
  try {
    var response = await Dio().get("https://www.cyberpunk.net/en/news");
    var document = parse(response.data.toString());
    var format = DateFormat('dd.MM.yyyy');
    List<News> news = [];
    document.querySelectorAll('.c-news').forEach((element) {
      print(element.attributes['href']);
      print(element.querySelector('.c-news__title').text);
      print(format
          .parse(element.querySelector('.c-news__date').attributes['data-text'])
          .toLocal());
    });
  } catch (e) {
    print(e);
  }
}

class News {
  final String title;
  final String url;
  final DateTime time;
  News({this.title, this.url, this.time});
}
