import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:sabak_10_xylaphone_audio/widgets/piano_key.dart';

class XylophonePage extends StatefulWidget {
  const XylophonePage({super.key});

  @override
  State<XylophonePage> createState() => _XylophonePageState();
}

class _XylophonePageState extends State<XylophonePage> {
  AudioPlayer audio = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: myAppBar(),
        body: Column(
          children: [
            PianoKey(
              colors: Color(0xffEF443A),
              onTap: () {
                audio.play(AssetSource('nota/do.wav'));
              },
            ),
            PianoKey(
              colors: Color(
                0xffF99700,
              ),
              onTap: () {
                audio.play(AssetSource('nota/re.wav'));
              },
            ),
            PianoKey(
              colors: Color(0xffFFE93B),
              onTap: () {
                audio.play(AssetSource('nota/mi.wav'));
              },
            ),
            PianoKey(
              colors: Color(0xff4cb050),
              onTap: () {
                audio.play(AssetSource('nota/fa.wav'));
              },
            ),
            PianoKey(
              colors: Color(0xff2e968b),
              onTap: () {
                audio.play(AssetSource('nota/so.wav'));
              },
            ),
            PianoKey(
              colors: Color(0xff2996f5),
              onTap: () {
                audio.play(AssetSource('nota/la.wav'));
              },
            ),
            PianoKey(
              colors: Color(0xff9b28b1),
              onTap: () {
                audio.play(AssetSource('nota/si.wav'));
              },
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBarTheme(
          data: BottomNavigationBarThemeData(),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xff363636),
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                backgroundColor: const Color(0xff363636),
                icon: Icon(
                  Icons.home,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                ),
                label: "Settings",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Profile",
              ),
            ],
            selectedLabelStyle: TextStyle(fontSize: 19),
            selectedItemColor: Colors.red,
          ),
        ));
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
