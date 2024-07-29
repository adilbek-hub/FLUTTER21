import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key, required this.count, required this.text});
  final int count;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Тапшырма 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (count == 10 || count == 35) Text('$text $count'),
            Center(
              child: Container(
                width: 325,
                height: 44,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xffaaaaaa),
                ),
                child: Center(
                    child: Text(
                  'Сан: $count',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
