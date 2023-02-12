import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.amber,
                title: const Text('Character Sheet For Newbies')),
            body: Center(
              child: Container(
                  margin: const EdgeInsets.all(100),
                  color: Colors.green,
                  height: 100,
                  width: 100,
                  child: const Text('There will be stuff')),
            )));
  }
}
