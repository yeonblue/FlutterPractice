import 'package:flutter/material.dart';

class ButtonExample extends StatelessWidget {
  const ButtonExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: () {
            print('TextButton Tapped');
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

        Switch(value: true, onChanged: (value) {
          print(value); // stateless므로 변화하지는 않을 것
        },)
      ],
    );
  }
}
