import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double height = 100;
  String text = "Now im small";
  void small() {
    setState(() {
      height = 100;
      text = "Now im small";
    });
  }

  void medium() {
    setState(() {
      height = 200;
      text = "Now im medium";
    });
  }

  void big() {
    setState(() {
      height = 300;
      text = "Now im big";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('My Second app')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                width: height,
                height: height,
                color: Colors.red,
                child: Center(
                    child: Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ))),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(onPressed: small, child: const Text('Small')),
                ElevatedButton(onPressed: medium, child: const Text('Medium')),
                ElevatedButton(onPressed: big, child: const Text('Big')),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
