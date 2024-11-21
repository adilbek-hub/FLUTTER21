import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class MaleFemaleContainer extends StatelessWidget {
  const MaleFemaleContainer({
    super.key,
    required this.icon,
    required this.text,
    required this.iconColor,
    this.onTap,
    required this.iconSize,
    required this.textColor,
  });
  final IconData icon;
  final String text;
  final Color iconColor;
  final Color textColor;
  final void Function()? onTap;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 177,
        width: 150,
        decoration: BoxDecoration(
          color: Color(0xff0A001f),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: iconColor,
                size: iconSize,
              ),
              Text(
                text,
                style: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
