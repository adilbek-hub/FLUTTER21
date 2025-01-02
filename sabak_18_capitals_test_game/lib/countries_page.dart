import 'package:flutter/material.dart';
import 'package:sabak_18_capitals_test_game/continents_page.dart';

class CountriesPage extends StatelessWidget {
  const CountriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          spacing: 5,
          children: [
            AssetsImage(image: 'assets/images/previous.png', size: 40),
            AssetsImage(
              image: 'assets/images/lightbulb.png',
              size: 40,
            ),
            Text('43'),
            SizedBox(width: 20),
            Text('14'),
          ],
        ),
        actions: [
          Row(
            children: List.generate(
                3,
                (index) => const AssetsImage(
                      image: 'assets/images/heart.png',
                      size: 40,
                    )),
          ),
          AssetsImage(image: 'assets/images/mentor.gif', size: 40),
        ],
      ),
      body: Column(
        spacing: 20,
        children: [
          LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          Text('Seoul'),
          AssetsImage(image: 'assets/countries/seaul.jpg', size: 300),
          Expanded(
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.only(top: 20),
                crossAxisSpacing: 1.5,
                mainAxisSpacing: 1.5,
                crossAxisCount: 2,
                children: List.generate(4, (index) {
                  return CardWidget(
                    onTap: () {},
                    'Text',
                    '',
                    Colors.grey,
                  );
                })),
          )
        ],
      ),
    );
  }
}

class AssetsImage extends StatelessWidget {
  const AssetsImage({
    super.key,
    required this.image,
    required this.size,
  });
  final String image;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: size,
    );
  }
}
