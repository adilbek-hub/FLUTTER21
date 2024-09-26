import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff056C5C),
      appBar: AppBar(
        title: const Text('Тапшырма 4'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Turat Alybaev',
                style: GoogleFonts.pacifico(
                  color: Colors.white,
                  fontSize: 48,
                  fontWeight: FontWeight.w400,
                )),
            const Text(
              'Flutter Developer',
              style: TextStyle(
                color: Color(0xffF7F9F9),
                fontSize: 28,
                fontWeight: FontWeight.w400,
              ),
            ),
            const Divider(
              indent: 57,
              endIndent: 57,
              height: 0.5,
              color: Colors.white,
              thickness: 2,
            ),
            const SizedBox(height: 23.5),
            const TextField(
              decoration: InputDecoration(
                hintText: '+ 996 700 10 10 10',
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Alybaevturat@gmail.com',
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
