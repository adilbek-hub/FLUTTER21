import 'package:flutter/material.dart';
import 'package:sabak_18_capitals_test_game/countries_page.dart';
import 'package:sabak_18_capitals_test_game/features/app_text.dart';
import 'package:sabak_18_capitals_test_game/features/app_texts.dart';
import 'package:sabak_18_capitals_test_game/features/model.dart';
import 'package:sabak_18_capitals_test_game/theme/app_bgc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: scaffoldColor,
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
                  return CardWidget(
                    onTap: () {
                      if (continent.text == "Asia") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CountriesPage();
                        }));
                      } else {
                        null;
                      }
                    },
                    continent.text,
                    continent.image,
                    const Color(0xfff6f6f6),
                  );
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
    this.text,
    this.image,
    this.color, {
    super.key,
    this.onTap,
  });
  final String? text;
  final String? image;
  final void Function()? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        color: color,
        child: Center(
          child: Column(
            spacing: 5,
            children: [
              appText.title(text ?? ""),
              if (image != null) Image.asset(image!)
            ],
          ),
        ),
      ),
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
