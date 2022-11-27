import 'package:flutter/material.dart';

class HelloWorldExample extends StatelessWidget {
  const HelloWorldExample({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Padding(
        // refactor로 padding 손쉽게 넣을 수 있음
        padding: EdgeInsets.all(16.0),
        child: Text("First Hello, world!"),
      ),
    );
  }
}