import 'package:flutter/material.dart';

class ThirthPage extends StatelessWidget {
  const ThirthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const MyHomePage(),
        //       ),
        //     );
        //   },
        //   icon: const Text('To MyHomePage'),
        // ),
        // title: IconButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const SecondPage(
        //           count2: 0,
        //           textForSecondPage: '',
        //         ),
        //       ),
        //     );
        //   },
        //   icon: const Text('To MySecondPage'),
        // ),
        leading: const Text('ssxsxs'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Thirth Page'),
          ],
        ),
      ),
    );
  }
}
