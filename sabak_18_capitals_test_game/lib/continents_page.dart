import 'package:flutter/material.dart';
import 'package:sabak_18_capitals_test_game/features/app_text.dart';
import 'package:sabak_18_capitals_test_game/features/app_texts.dart';
import 'package:sabak_18_capitals_test_game/features/model.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar(),
      body: Column(
        children: [
          Line(),
          Expanded(
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: List.generate(6, (index) {
                  final continent = continentsList[index];
                  return CardWidget(continent.text);
                })),
          )
        ],
      ),
    );
  }

  PreferredSizeWidget myAppbar() {
    return AppBar(
      title: appText.header(appTexts.titleText),
      actions: const [
        Icon(
          Icons.settings,
          color: Colors.blue,
        ),
        Icon(
          Icons.more_vert,
        ),
      ],
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget(
    this.text, {
    super.key,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.teal[400],
      child: appText.title(text),
    );
  }
}

class Line extends StatelessWidget {
  const Line({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.black,
      indent: 20,
      endIndent: 20,
    );
  }
}
