import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Тапшырма 2'),
      ),
      body: Center(
        child: Container(
          width: 325,
          height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xffaaaaaa),
          ),
          child: const Center(
              child: Text(
            'Сан: 0',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w900,
            ),
          )),
        ),
      ),
    );
  }
}
