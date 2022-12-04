import 'package:flutter/material.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScreenOne'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go Back'),
          onPressed: () {
            Navigator.pop(context); // most top으로 보냄
          },
        ),
      )

      ,
    );
  }
}