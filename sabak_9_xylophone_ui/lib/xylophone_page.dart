import 'package:flutter/material.dart';

class XylophonePage extends StatelessWidget {
  const XylophonePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: const Column(
        children: [
          PianoKey(colors: Colors.red),
          PianoKey(colors: Colors.blue),
          PianoKey(colors: Colors.green),
          PianoKey(colors: Colors.indigo),
          PianoKey(colors: Colors.brown),
          PianoKey(colors: Colors.lime),
          PianoKey(colors: Colors.tealAccent),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: const Color(0xff363636),
      title: const Center(
        child: Text(
          'Flutter xylophone',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class PianoKey extends StatelessWidget {
  const PianoKey({
    super.key,
    required this.colors,
  });
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 91,
      decoration: BoxDecoration(color: colors),
    );
  }
}
