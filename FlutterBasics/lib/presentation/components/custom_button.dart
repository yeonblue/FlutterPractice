import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final Function() onTap;
  final IconData icon;
  final Color iconColor;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Ink( // material 위젯을 그리는 역할
        width: 50,
        height: 50,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.yellow, Colors.green]
          )
        ),
        child: InkWell(
          onTap: () => onTap(), // 직접 onTap()으로 하면 안됨
          splashColor: Colors.red, // splash animation 색
          customBorder: const CircleBorder(),
          child: Center(
            child: Icon(
              icon,
              color: iconColor,
            ),
          ),
        ),
      ),
    );
  }
}
