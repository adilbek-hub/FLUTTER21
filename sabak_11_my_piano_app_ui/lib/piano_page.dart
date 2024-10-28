import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak_11_my_piano_app_ui/widgets/black_piano_key.dart';
import 'package:sabak_11_my_piano_app_ui/widgets/white_piano_key.dart';

class PianoPage extends StatelessWidget {
  const PianoPage({super.key});

  @override
  Widget build(BuildContext context) {
    AudioPlayer nota = AudioPlayer();
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Spacer(),
          Stack(
            children: [
              Row(
                children: [
                  WhitePianoKey(
                    text: 'f1',
                    onPressed: () => nota.play(
                      AssetSource('nota/do.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f2',
                    onPressed: () => nota.play(
                      AssetSource('nota/re.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f3',
                    onPressed: () => nota.play(
                      AssetSource('nota/mi.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f4',
                    onPressed: () => nota.play(
                      AssetSource('nota/fa.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f5',
                    onPressed: () => nota.play(
                      AssetSource('nota/so.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f6',
                    onPressed: () => nota.play(
                      AssetSource('nota/la.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f1',
                    onPressed: () => nota.play(
                      AssetSource('nota/si.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f2',
                    onPressed: () => nota.play(
                      AssetSource('nota/do.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f3',
                    onPressed: () => nota.play(
                      AssetSource('nota/re.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f4',
                    onPressed: () => nota.play(
                      AssetSource('nota/mi.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f5',
                    onPressed: () => nota.play(
                      AssetSource('nota/fa.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f6',
                    onPressed: () => nota.play(
                      AssetSource('nota/so.wav'),
                    ),
                  ),
                  WhitePianoKey(
                    text: 'f7',
                    onPressed: () => nota.play(
                      AssetSource('nota/la.wav'),
                    ),
                  ),
                ],
              ),
              BlackPianoKey(
                left: 35,
                text: "f1",
              ),
              BlackPianoKey(
                left: 92,
                text: "f2",
              ),
              BlackPianoKey(
                left: 200,
                text: "f3",
              ),
              BlackPianoKey(
                left: 258,
                text: "f4",
              ),
              BlackPianoKey(
                left: 311,
                text: "f5",
              ),
              BlackPianoKey(
                left: 420,
                text: "f1",
              ),
              BlackPianoKey(
                left: 473,
                text: "f2",
              ),
              BlackPianoKey(
                right: 205,
                text: "f3",
              ),
              BlackPianoKey(
                right: 150,
                text: "f4",
              ),
              BlackPianoKey(
                right: 98,
                text: "f5",
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
