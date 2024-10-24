import 'package:flutter/material.dart';

class WhitePianoKey extends StatelessWidget {
  const WhitePianoKey({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shadowColor: Colors.greenAccent,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(5),
            topRight: Radius.circular(5),
          ),
        ),
        minimumSize: const Size(54.91, 217.93),
      ),
      onPressed: () {},
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          const Center(
            child: Text(
              'f1',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19.6,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}



/*
Container(
      width: 54.91,
      height: 217.93,
      decoration: BoxDecoration(
        color: const Color(0xffe4e4e4),
        border: Border.all(color: Colors.grey),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5),
        ),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const Center(
            child: Text(
              'f1',
              style: TextStyle(
                color: Colors.black,
                fontSize: 19.6,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
 */