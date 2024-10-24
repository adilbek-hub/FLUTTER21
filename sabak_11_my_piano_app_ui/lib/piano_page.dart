import 'package:flutter/material.dart';
import 'package:sabak_11_my_piano_app_ui/widgets/black_piano_key.dart';
import 'package:sabak_11_my_piano_app_ui/widgets/white_piano_key.dart';

class PianoPage extends StatelessWidget {
  const PianoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppBar(),
      body: const Column(
        children: [
          Spacer(),
          Stack(
            children: [
              Row(
                children: [
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                  WhitePianoKey(),
                ],
              ),
              BlackPianoKey(
                left: 35,
              ),
              BlackPianoKey(
                left: 92,
              ),
              BlackPianoKey(
                left: 200,
              ),
              BlackPianoKey(
                left: 258,
              ),
              BlackPianoKey(
                left: 311,
              ),
              BlackPianoKey(
                left: 420,
              ),
              BlackPianoKey(
                left: 473,
              ),
              BlackPianoKey(
                right: 205,
              ),
              BlackPianoKey(
                right: 150,
              ),
              BlackPianoKey(
                right: 98,
              ),
            ],
          )
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      centerTitle: true,
      title: const Text(
        'My Piano App',
        style: TextStyle(
          color: Colors.white,
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
