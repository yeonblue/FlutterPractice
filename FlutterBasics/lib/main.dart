import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter Basics"),), 
        body: const Center(
          child: Text("Hello, World!"), // parent(Center)가 const므로 child는 const로 안해도 됨
        ),
      ),
    );
  }
}

// flutter는 모든 것은 widget으로 처리
// text는 Text widget, layout이면 Scaffold...