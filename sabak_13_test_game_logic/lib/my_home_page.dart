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
  List allAnswers = [];

  questionAnswer() {
    if (quizeList[questionNumber].answer == true ||
        quizeList[questionNumber].answer == false) {
      tuuraJoop++;
      questionNumber++;
      allAnswers.add(true);
      print('tuuraJoop ${tuuraJoop.toInt()}');
    } else if (quizeList[questionNumber].answer == true ||
        quizeList[questionNumber].answer == false) {
      tuuraEmesoop++;
      questionNumber++;
      allAnswers.add(false);
      print('tuuraEmesoop${tuuraEmesoop.toInt()}');
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
            title: Text('Hello'),
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
            CustomButton(
                text: 'Туура',
                color: Color(0xff4cb050),
                onPressed: () {
                  questionAnswer();
                }),
            const SizedBox(height: 30),
            CustomButton(
              text: 'Туура эмес',
              color: Color(0xffef443a),
              onPressed: () {
                questionAnswer();
              },
            ),
            Row(
                children: allAnswers.map((e) {
              return Icon(e ? Icons.done : Icons.close);
            }).toList()),
          ],
        ),
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
