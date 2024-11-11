import 'package:flutter/material.dart';
import 'package:sabak_13_test_game_logic/oop_for_quize.dart';
import 'package:sabak_13_test_game_logic/widgets/custom_button.dart';
import 'package:sabak_13_test_game_logic/widgets/question.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int questionNumber = 0;
  int tuuraJoop = 0;
  int tuuraEmesoop = 0;
  List<bool> allAnswers = [];

  questionAnswer(bool isTrue) {
    if (quizeList[questionNumber].answer == isTrue) {
      tuuraJoop++;
      questionNumber++;
      allAnswers.add(true);
    } else {
      tuuraEmesoop++;
      questionNumber++;
      allAnswers.add(false);
    }
    if (questionNumber >= quizeList.length) {
      questionNumber = quizeList.length - 1;
      showTestDialog(context);
    }

    setState(() {});
  }

  Future<void> showTestDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Row(
              children: [
                Text(
                  'Туура жооп: $tuuraJoop',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 13,
                  ),
                ),
                SizedBox(width: 5),
                Text(
                  'Ката жооп: $tuuraEmesoop',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            actions: [
              ElevatedButton(
                  onPressed: () {
                    questionNumber = 0;
                    tuuraJoop = 0;
                    tuuraEmesoop = 0;
                    allAnswers.clear();
                    Navigator.pop(context);

                    setState(() {});
                  },
                  child: Text('Баштоо'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff363636),
      appBar: myAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Questions(
              text: quizeList[questionNumber].question,
            ),
            SizedBox(height: 50),
            CustomButton(
                text: 'Туура',
                color: Color(0xff4cb050),
                onPressed: () {
                  questionAnswer(true);
                }),
            const SizedBox(height: 30),
            CustomButton(
              text: 'Туура эмес',
              color: Color(0xffef443a),
              onPressed: () {
                questionAnswer(false);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
            children: allAnswers.map((e) {
          return Icon(
            e ? Icons.done : Icons.close,
            color: e ? Colors.green : Colors.red,
          );
        }).toList()),
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      title: const Text(
        'Тапшырма 7',
        style: TextStyle(
          fontSize: 23,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
