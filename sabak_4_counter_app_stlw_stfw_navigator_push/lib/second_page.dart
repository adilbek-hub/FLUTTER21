import 'package:flutter/material.dart';
import 'package:sabak_4_counter_app_stlw_stfw_navigator_push/thirth_page.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(
      {super.key, required this.count2, required this.textForSecondPage});
  final int count2;
  final String textForSecondPage;
  final String text = 'Flutter 21 group';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(textForSecondPage),
          Text(text),
          Text("$count2"),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
              minimumSize: const Size(200, 50),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ThirthPage(),
                  ));
            },
            child: const Text(
              'To Thirth Page',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
