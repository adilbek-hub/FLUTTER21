// import - bul flutterdegi widgetterdi ishtetuu uchun material koldonot
import 'package:flutter/material.dart';

// void - bul bul funcsianyn jonokoy ekenin bildiret
// main - bul negizgi fuksianyn atalyshy, maksaty programmany ishtetet
// () - bul funksianyn funksia ekenin bildiret
// {} - bul funksianyn denesi
void main() {
  // run app - bul class ala turgan metod. Bul metod Widget alat.
  // const
  //  MyApp - bul class je Widget
  runApp(const MyApp());
}

// class
// MyApp - bul classtyn atalyshy
// extends - bul muras degen maanini bildiret
// StatelessWidget - bul Flutter Frameworkto negizgi widget bolup sanalat
class MyApp extends StatelessWidget {
// const
// const MyApp({super.key}); - bul konstruktor
// super - bul atasynan kelgen parametrler
  const MyApp({super.key});
//  @override - bul ozgortuugo bolo turgan maani
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.red,
        leading: const Text("Салам Алейкум"),
        title: const Center(child: Text('Тапшырма 1')),
        actions: const [
          Text('Action Text'),
          Text('Action Text'),
          Text('Action Text')
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Бул узун контейнер
            Container(
              width: 325,
              height: 44,
              decoration: BoxDecoration(
                  color: Colors.grey[400],
                  borderRadius: BorderRadius.circular(10)),
              child: const Center(
                  child: Text(
                'Cан: 0',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )),
            ),
            const SizedBox(height: 41),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff0d61ae),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                const SizedBox(width: 40),
                Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xff0d61ae),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
