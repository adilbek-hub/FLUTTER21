import 'package:flutter/material.dart';
import 'package:sabak_8__dice_app/widgets/custom_button.dart';
import 'package:sabak_8__dice_app/widgets/image_widget.dart';

class DicePage extends StatelessWidget {
  const DicePage({super.key});

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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                    child: ImageWidget(image: 'assets/svg/die_face_1.svg'),
                  ),
                  Expanded(
                    child: ImageWidget(image: 'assets/svg/die_face_2.svg'),
                  ),
                ],
              ),
              CustomButton(),
            ],
          ),
        ),
      ),
    );
  }
}
