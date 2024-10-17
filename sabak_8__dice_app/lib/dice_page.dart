import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sabak_8__dice_app/widgets/custom_button.dart';
import 'package:sabak_8__dice_app/widgets/image_widget.dart';

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // Diceтарды байлоо максатында өзгөрмөлөрдү түзүү
  int leftDiceNumber = 1;
  int rightDiceNumber = 4;

  // Дарт математикадан келген рандом классты переменныйга байлоо үчүн функция
  void rollDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text('Dice App'),
        ),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/jpeg/bgc.jpeg'),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ImageWidget(
                        image: 'assets/svg/die_face_$leftDiceNumber.svg'),
                  ),
                  Expanded(
                    child: ImageWidget(
                        image: 'assets/svg/die_face_$rightDiceNumber.svg'),
                  ),
                ],
              ),
              CustomButton(onPressed: rollDice),
            ],
          ),
        ),
      ),
    );
  }
}
