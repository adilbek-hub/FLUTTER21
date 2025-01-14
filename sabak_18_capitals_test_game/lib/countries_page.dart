import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sabak_18_capitals_test_game/continents_page.dart';
import 'package:sabak_18_capitals_test_game/features/model/countries_model.dart';
import 'package:sabak_18_capitals_test_game/features/widgets.dart';

class CountriesPage extends StatefulWidget {
  const CountriesPage({super.key});

  @override
  State<CountriesPage> createState() => _CountriesPageState();
}

class _CountriesPageState extends State<CountriesPage> {
  GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  int nextIndex = 0;
  int correctAnswer = 0;
  int incorrectAnswer = 0;
  int lives = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      endDrawer: const EndDrawerWidget(),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          spacing: 5,
          children: [
            GestureDetector(
                onTap: () => Navigator.pop(context),
                child:
                    AssetsImage(image: 'assets/images/previous.png', size: 40)),
            AssetsImage(
              image: 'assets/images/lightbulb.png',
              size: 40,
            ),
            Row(
              children: [
                Text(
                  correctAnswer.toString(),
                  style: TextStyle(color: Colors.green),
                ),
              ],
            ),
            SizedBox(width: 20),
            Text(
              incorrectAnswer.toString(),
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        actions: [
          Row(
            children: List.generate(
                lives,
                (index) => const AssetsImage(
                      image: 'assets/images/heart.png',
                      size: 40,
                    )),
          ),
          GestureDetector(
              onTap: () {
                _globalKey.currentState!.openEndDrawer();
              },
              child: AssetsImage(image: 'assets/images/mentor.gif', size: 40)),
        ],
      ),
      body: Column(
        spacing: 20,
        children: [
          const LinearProgressIndicator(
            backgroundColor: Colors.grey,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
          ),
          Text(tests[nextIndex].question),
          AssetsImage(image: tests[nextIndex].capitalImage, size: 300),
          Expanded(
            child: GridView.count(
                primary: false,
                padding: const EdgeInsets.only(top: 20),
                crossAxisSpacing: 1.5,
                mainAxisSpacing: 1.5,
                crossAxisCount: 2,
                children: List.generate(4, (int san) {
                  return CardWidget(
                    onTap: () {
                      setState(() {
                        if (tests[nextIndex].answers[san].isTrue == true) {
                          correctAnswer++;
                        } else {
                          incorrectAnswer++;
                          if (lives > 0) {
                            lives--;
                          }
                        }
                      });

                      if (nextIndex + 1 == tests.length || lives == 0) {
                        _showMyDialog(correctAnswer, incorrectAnswer);

                        nextIndex = -1;
                        correctAnswer = 0;
                        incorrectAnswer = 0;
                        lives = 3;
                      }
                      setState(() {
                        nextIndex++;
                      });
                    },
                    tests[nextIndex].answers[san].answer,
                    buttonColor: Colors.grey,
                  );
                })),
          )
        ],
      ),
    );
  }

  Future<void> _showMyDialog(int correctAnswer, int inCorrextAnswer) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Сиздин тест жыйынтыгыңыз'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Column(
                  children: [
                    Text("Туура жооптор: " + correctAnswer.toString()),
                    Text("Туура эмес жооптор: " + inCorrextAnswer.toString()),
                  ],
                )
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Кайра баштоо'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
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
