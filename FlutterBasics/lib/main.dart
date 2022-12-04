import 'package:flutter/material.dart';
import 'package:flutterbasics/presentation/counter/counter_screen.dart';
import 'package:flutterbasics/presentation/list/list_screen.dart';
import 'package:flutterbasics/presentation/navigation_screen.dart/screen_one.dart';
import 'package:flutterbasics/presentation/navigation_screen.dart/screen_two.dart';
import 'package:flutterbasics/presentation/widgets_example/example_screen.dart';
import 'package:flutterbasics/root_bottom_navigation.dart';
import 'package:flutterbasics/theme.dart';

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
      themeMode: ThemeMode.system,
      theme: Apptheme.lightTheme,
      darkTheme: Apptheme.darkTheme,
      debugShowCheckedModeBanner: false, // 우측 상단 디버그 사라지게
      home: const RootBottomNavigation(),
      routes: <String, WidgetBuilder> {
        '/root': (context) => const RootBottomNavigation(),
        '/screenOne': (context) => const ScreenOne(),
        '/screenTwo': (context) => const ScreenTwo(),
      },
    );
  }
}
