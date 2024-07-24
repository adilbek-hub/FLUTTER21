// import - bul flutterdegi widgetterdi ishtetuu uchun material koldonot
import 'package:counter_app_second_page/second_page.dart';
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
  // Widget - bul designdy tuzuu uchun kural
  // build - bul proektini kuruu method
  // BuildContext context - bul kurup jatkan widgetterdin marshrutun negizdoochu context

  Widget build(BuildContext context) {
    // return - bul kaytaruu degendi bildiret (MaterialApp kaytarat)
    // MaterialApp app bul proektinin designynyn tusun, korunush jagyn koldout
    return const MaterialApp(
      // debugShowCheckedModeBanner: false,
      debugShowCheckedModeBanner: false,
      // home - bull Widget alat? HomePageti okuyt
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
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(child: Text('Тапшырма 1')),
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
              child: Center(
                  child: Text(
                'Cан: $count',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              )),
            ),
            const SizedBox(height: 41),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    count--;
                    setState(() {});
                  },
                  child: Container(
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
                ),
                const SizedBox(width: 40),
                InkWell(
                  onTap: () {
                    count++;
                    setState(() {});
                    print(count);
                  },
                  child: Container(
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
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.grey),
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const SecondPage();
                }));
              },
              child: const Text(
                'Экинчи Бетке өтүү үчүн мени бас',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {
      //     Navigator.push(context, MaterialPageRoute(builder: (context) {
      //       return const SecondPage();
      //     }));
      //   },
      //   label: const Text("To Second Page"),
      // ),
    );
  }
}
