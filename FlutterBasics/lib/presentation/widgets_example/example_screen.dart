import 'package:flutter/material.dart';
import 'widget/centerText.dart';
class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // one page를 의미(basic layout)
        backgroundColor: const Color.fromARGB(255, 127, 183, 216),
        appBar: AppBar(
          title: const Text("Flutter Basics"),
        ),
        body: const CenterText(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("Clicked"),
          child: const Icon(Icons.ac_unit),
        ),
      );
  }
}
