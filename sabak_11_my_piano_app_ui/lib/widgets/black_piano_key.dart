import 'package:flutter/material.dart';

class BlackPianoKey extends StatelessWidget {
  const BlackPianoKey({
    super.key,
    this.left,
    this.right,
  });
  final double? left;
  final double? right;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      right: right,
      child: Container(
        width: 38.9,
        height: 127.64,
        decoration: BoxDecoration(
          color: const Color(0xff2e364f),
          border: Border.all(color: Color(0xff171a26)),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Center(
              child: Text(
                'f1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19.6,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
