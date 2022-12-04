import 'package:flutter/material.dart';
import 'package:flutterbasics/presentation/navigation_screen.dart/screen_one.dart';
import 'package:flutterbasics/presentation/navigation_screen.dart/screen_two.dart';

class ButtonExample extends StatefulWidget { // 앱 전체를 stafeful로 사용하는 것은 성능에 좋지 않음
  const ButtonExample({super.key});

  @override
  State<ButtonExample> createState() => _ButtonExampleState();
}

class _ButtonExampleState extends State<ButtonExample> {
  bool switchState = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const ScreenTwo();
            },),
            );
          },
          onLongPress: () {
            print('TextButton Long Tapped');
          },
          child: Container(
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(8),
              color: Colors.blue,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Text Button',
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),

        IconButton(onPressed: () {
            print('Icon Button Tapped');
          },
          icon: const Icon(Icons.play_arrow),
        ),

        Switch(value: switchState, onChanged: (value) {
          
          setState(() { // 새로 re-render 요청
            switchState = value; // stafeful이라 상태 변경 가능
            // 모든 page가 stafeful이면 bad-performance를 보일 것
          });
        },)
      ],
    );
  }
}
