import 'package:flutter/material.dart';
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
                  text: 'male',
                  iconColor: isMale ? Colors.white : Colors.red,
                  iconSize: isMale ? 68 : 100,
                  stopPauseOnTap: isMale ? false : true,
                ),
                const SizedBox(width: 35),
                MaleFemaleContainer(
                  onTap: () => maleFun(),
                  icon: Icons.female,
                  text: 'female',
                  iconColor: isMale ? Colors.red : Colors.white,
                  iconSize: isMale ? 100 : 68,
                  stopPauseOnTap: isMale ? true : false,
                ),
              ],
            ),
            SizedBox(height: 18),
            HeightConatiner(
              text: 'height',
              san: 180,
              sm: 'sm',
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
