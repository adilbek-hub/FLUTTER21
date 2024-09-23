import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffECB90B),
      appBar: AppBar(
        backgroundColor: const Color(0xffECB90B),
        title: const Text('Тапшырма 4'),
      ),
      body: Center(
        child: Column(
          children: [
            const Divider(
              thickness: 5,
              color: Colors.black54,
            ),
            const SizedBox(
              height: 200,
            ),
            Text(
              "I'm Rich",
              style: GoogleFonts.sofia(fontSize: 48),
            ),
            Image.asset(
              'assets/almaz.png',
            ),
            const CircleAvatar(
              backgroundColor: Colors.blueGrey,
              radius: 48,
              backgroundImage: NetworkImage(
                  'https://au.movember.com/uploads/images/resources/5df779f991cf99e6610bf01a9d93d70d5861282e-org.png'),
            )
          ],
        ),
      ),
    );
  }
}
