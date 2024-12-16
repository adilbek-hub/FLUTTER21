import 'package:flutter/material.dart';

class News {
  const News({required this.image, required this.date, required this.text});
  final String image;
  final String date;
  final String text;
}

News news1 = const News(
  image: 'assets/Rectangle.png',
  date: "1 Feb, 2020",
  text: 'Velit officia consequat duis enim velit mollit. 2 months ago',
);
News news2 = const News(
  image: 'assets/Rectangle (1).png',
  date: "5/27/15",
  text:
      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit',
);
News news3 = const News(
  image: 'assets/Rectangle (2).png',
  date: "1/15/12",
  text:
      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit',
);
News news4 = const News(
  image: 'assets/Rectangle (3).png',
  date: "21 Sep, 2020",
  text:
      'Aliqua id fugiat nostrud irure ex duis ea quis id quis ad et. Sunt qui esse pariatur duis deserunt mollit',
);
News news5 = const News(
  image: 'assets/Rectangle (4).png',
  date: "8 Sep, 2020",
  text: 'Velit officia consequat duis enim velit mollit. 2 months ago',
);
News news6 = const News(
  image: 'assets/Rectangle.png',
  date: "1 Feb, 2020",
  text: 'Velit officia consequat duis enim velit mollit. 2 months ago',
);

final List<News> newsList = [news1, news2, news3, news4, news5, news6];
