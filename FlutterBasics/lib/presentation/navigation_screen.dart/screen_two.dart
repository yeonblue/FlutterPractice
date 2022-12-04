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
            Navigator.pushReplacement( // push로 보내면 다음 화면에서 pop하면 screenTwo로 돌아옴, 이 경우 screenone에서 pop하면 바로 root로 갈 것
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

// canPop을 통해 체크 가능
// popUntil 특정한 페이지까지 pop 가능