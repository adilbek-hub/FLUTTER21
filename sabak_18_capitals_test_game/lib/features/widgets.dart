import 'package:flutter/material.dart';

class EndDrawerWidget extends StatelessWidget {
  const EndDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 793,
      width: 300,
      decoration: BoxDecoration(
          color: Colors.red.shade100,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), bottomLeft: Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 10,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Icon(Icons.close)),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              Text('Search the internet',
                  style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.chat),
              SizedBox(
                width: 10,
              ),
              Text(
                'Chat with Ray',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Icon(Icons.branding_watermark),
              SizedBox(
                width: 10,
              ),
              Text(
                'Become a master',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
