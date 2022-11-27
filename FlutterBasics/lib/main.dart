import 'package:flutter/material.dart';
import 'package:flutterbasics/presentation/widgets_example/example_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
     const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 모든 widget은 build function을 가짐, flutter는 widget tree 구조

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.amber),
      ),
      debugShowCheckedModeBanner: false, // 우측 상단 디버그 사라지게
      home: const ExampleScreen(),
    );
  }
}
