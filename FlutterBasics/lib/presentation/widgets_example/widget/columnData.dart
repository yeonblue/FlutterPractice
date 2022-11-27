import 'package:flutter/material.dart';

class ColumnData extends StatelessWidget {
  const ColumnData({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max, // 안그러면 길이가 최대로 잡힘, max도 마찬가지
      crossAxisAlignment: CrossAxisAlignment.center, // x축
      children: [
        const SizedBox(
          // swiftui spacer 사이즈 준 거랑 비슷한 듯
          height: 30,
          width: double.infinity,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          width: 150,
          height: 150,
          child: const Center(
            child: Text(
              "Hello",
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const SizedBox(
          width: 100,
          height: 100,
          child: CircleAvatar(
              backgroundImage: NetworkImage("https://picsum.photos/200")),
        ),
        Stack(
          // swiftui의 zstack 비슷한 듯
          children: [
            SizedBox(
              width: 100,
              height: 150,
              child: Image.asset(
                'assets/logo.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            const Positioned(
              top: 130,
              child: Text("Logo"),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
          width: MediaQuery.of(context)
              .size
              .width, // 기기 전체 넓이, context를 쓸 때는 MaterialApp context말고 별도로 exclude 한 다음 사용 해야 함, 아니면 builder 사용
          height: 100,
          color: Colors.green,
          child: const Center(
            child: Text("Last Text"),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth / 2,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Center(
                child: Text("Layout Builder Text"),
              ),
            );
          },
        )
      ],
    );
  }
}
