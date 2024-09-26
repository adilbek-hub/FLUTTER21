import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatelessWidget VS StatefulWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Hello Flutter'),
            Text('$a'),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {});
                a++;
                print(a);
              },
              label: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
