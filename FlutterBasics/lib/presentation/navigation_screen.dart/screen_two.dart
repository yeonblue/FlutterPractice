import 'package:flutter/material.dart';
import 'package:flutterbasics/presentation/navigation_screen.dart/screen_one.dart';

class ScreenTwo extends StatelessWidget {
  const ScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenTwo'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go To ScreenOne'),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => const ScreenOne(),
              ),
            );
          },
        ),
      ),
    );
  }
}
