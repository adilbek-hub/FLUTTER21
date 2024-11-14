import 'package:flutter/material.dart';
import 'package:sabak_14_bmi_calculator_ui/widgets/height_conatiner.dart';
import 'package:sabak_14_bmi_calculator_ui/widgets/male_female_conatiner.dart';
import 'package:sabak_14_bmi_calculator_ui/widgets/weight_age_conatiner.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff221935),
      appBar: _myAppBar(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaleFemaleContainer(
                  icon: Icons.male,
                  text: 'male',
                ),
                SizedBox(width: 35),
                MaleFemaleContainer(
                  icon: Icons.female,
                  text: 'female',
                ),
              ],
            ),
            SizedBox(height: 18),
            HeightConatiner(
              text: 'height',
              textSm: '100 sm',
            ),
            SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WeightAgeConatiner(
                  text: 'weight',
                  san: 60,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                ),
                SizedBox(width: 25),
                WeightAgeConatiner(
                  text: 'age',
                  san: 28,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 73,
        color: Color(0xffff0565),
        child: Center(
          child: Text(
            'CALCULATOR',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  AppBar _myAppBar() {
    return AppBar(
      backgroundColor: Color(0xff221935),
      title: const Center(
        child: Text(
          'BMI CALCULATOR',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
