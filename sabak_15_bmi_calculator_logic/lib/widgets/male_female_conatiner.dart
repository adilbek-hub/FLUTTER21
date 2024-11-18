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
    required this.stopPauseOnTap,
  });
  final IconData icon;
  final String text;
  final Color iconColor;
  final void Function()? onTap;
  final double iconSize;
  final bool stopPauseOnTap;

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
              AnimatedTextKit(
                animatedTexts: [
                  RotateAnimatedText(
                    text.toUpperCase(),
                    textStyle: const TextStyle(
                      color: Color(0xffceccd2),
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  )
                ],
                totalRepeatCount: 3,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: stopPauseOnTap,
              )
            ],
          ),
        ),
      ),
    );
  }
}
