
import 'package:flutter/material.dart';

class CustomButtonGesture extends StatelessWidget {

  final Function() onTap;
  final String text;

  const CustomButtonGesture({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.blue, Colors.orange],
          ),
        ),
        child: Center(
          child: Text(text),
        ),
      ),
    );
  }
}