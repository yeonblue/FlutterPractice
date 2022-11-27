import 'package:flutter/material.dart';

class ExpanedRowExample extends StatelessWidget {
  const ExpanedRowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          child: Expanded(
            flex: 1, // 비율을 의미, flex를 두개를 10, 10 주면 50%, 50% 차지
            child: Text("1. row1 veryverylong sentences..........."),
          ),
        ),
        Container(
          height: 20,
          width: 20,
          color: Colors.yellow,
        ),
        const Flexible(
          // flex 값으로 지정한 비율 내에서, Expanded를 쓰면 남은 영역 모두 차지, row는 기본적으로 한 줄에 다 보여주려 함
          child: Text(
            "2. row2 veryverylong sentences...........",
            maxLines: 2, // 2줄만 표시
            overflow: TextOverflow.ellipsis,
          ), // flexible을 줘서 여러줄 표시 가능
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          width: 20,
          height: 20,
          color: Colors.green,
        )
      ],
    );
  }
}
