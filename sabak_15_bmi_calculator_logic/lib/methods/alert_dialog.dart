import 'package:flutter/material.dart';

class AlertClass {
  Future<void> showMyDialog(context, {required String text}) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(''),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(text),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
                child: const Text('Аркага кайтуу'),
                onPressed: () {
                  Navigator.pop(context);
                }),
          ],
        );
      },
    );
  }
}
