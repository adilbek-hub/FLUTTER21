import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator_logic/methods/alert_dialog.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/calculator.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/height_conatiner.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/male_female_conatiner.dart';
import 'package:sabak_15_bmi_calculator_logic/widgets/weight_age_conatiner.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isMale = false;
  int height = 180;
  int weight = 60;
  int age = 28;
  void maleFun() {
    setState(() {});
    isMale = !isMale;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff221935),
      appBar: _myAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaleFemaleContainer(
                  onTap: () => maleFun(),
                  icon: Icons.male,
                  iconSize: isMale ? 68 : 100,
                  iconColor: isMale ? Colors.white : Colors.red,
                  text: 'male',
                  textColor: isMale ? const Color(0xffceccd2) : Colors.red,
                ),
                const SizedBox(width: 35),
                MaleFemaleContainer(
                  onTap: () => maleFun(),
                  icon: Icons.female,
                  iconSize: isMale ? 100 : 68,
                  iconColor: isMale ? Colors.red : Colors.white,
                  text: 'female',
                  textColor: isMale ? Colors.red : const Color(0xffceccd2),
                ),
              ],
            ),
            const SizedBox(height: 18),
            HeightConatiner(
              text: 'height',
              san: height,
              sm: 'sm',
              widget: Slider.adaptive(
                thumbColor: Color(0xffff0f65),
                activeColor: Colors.white,
                inactiveColor: Colors.grey,
                min: 0,
                max: 300,
                value: height.toDouble(),
                onChanged: (v) {
                  height = v.toInt();
                  setState(() {});
                  print(height);
                },
              ),
            ),
            const SizedBox(height: 18),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                WeightAgeConatiner(
                  onPressedRemoveIcon: () => setState(() => weight--),
                  onPressedAddIcon: () => setState(() => weight++),
                  text: 'weight',
                  san: weight,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                ),
                SizedBox(width: 25),
                WeightAgeConatiner(
                  onPressedRemoveIcon: () => setState(() => age--),
                  onPressedAddIcon: () => setState(() => age++),
                  text: 'age',
                  san: age,
                  iconAdd: Icons.add,
                  iconRemove: Icons.remove,
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Calculator(weight: weight, height: height),
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
