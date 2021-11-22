import 'package:web_scraper/web_scraper.dart';

void main() =>
void webscrap() async {

  const rawUrl =
      'https://dining.purdue.edu/menus/Earhart';
  final webScraper = WebScraper('https://dining.purdue.edu');
  final endpoint = rawUrl.replaceAll(r'https://dining.purdue.edu', '');
  if (await webScraper.loadWebPage(endpoint)) {
    final titleElements = webScraper.getElement(
        'div.meal > div.station > div.station-container '
            '> div.station-items > div.station-item--container_plain '
            '> div.a.station-item',
        []);
    print(titleElements);
    final titleList = <String>[];
    titleElements.forEach((element) {
      final title = element['title'];
      titleList.add('$title');
    });
    print(titleList);
    /*if (mounted)
      setState(() {
        this.titleList = titleList;
      });*/
  } else {
    print('Cannot load url');
  }
}