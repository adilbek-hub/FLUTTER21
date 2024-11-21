import 'package:flutter/material.dart';
import 'package:sabak_15_bmi_calculator_logic/methods/alert_dialog.dart';

class Calculator extends StatelessWidget {
  const Calculator({
    super.key,
    required this.weight,
    required this.height,
  });

  final int weight;
  final int height;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        final result = (weight / ((height / 100) * (height / 100)));
        if (result > 0 && result <= 18.5) {
          AlertClass().showMyDialog(context, text: 'Сиз Арыксыз');
        } else if (result > 18.5 && result <= 25) {
          AlertClass()
              .showMyDialog(context, text: 'Сиздин салмагыңыз нормалдуу');
        } else if (result > 25 && result <= 30) {
          AlertClass().showMyDialog(context, text: 'Ашыкча салмак');
        } else if (result > 30 && result <= 35) {
          AlertClass().showMyDialog(context, text: 'Сиз семиссиз');
        } else if (result > 35 && result <= 40) {
          AlertClass().showMyDialog(context, text: 'өтө семиссиз');
        }
      },
      child: Container(
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
}
