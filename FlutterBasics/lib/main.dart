import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget { // stateless므로 변화하지 않음
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { // 모든 widget은 build function을 가짐, flutter는 widget tree 구조
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(appBarTheme: const AppBarTheme(
        backgroundColor: Colors.amber 
        ),
      ),
      debugShowCheckedModeBanner: false, // 우측 상단 디버그 사라지게
      home: Scaffold( // one page를 의미(basic layout)
        backgroundColor: const Color.fromARGB(255, 127, 183, 216),
        appBar: AppBar(
          title: const Text("Flutter Basics"),
          ), 
        body: const CenterText(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => debugPrint("Clicked"),
          child: const Icon(Icons.ac_unit),
        ),
      ),
    );
  }
}

// extract 기능으로 손쉽게 추출 가능
class CenterText extends StatelessWidget {
  const CenterText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      height: 300,
      child: Column(
        mainAxisSize: MainAxisSize.max, // 안그러면 길이가 최대로 잡힘, max도 마찬가지
        mainAxisAlignment: MainAxisAlignment.center,   // y축
        crossAxisAlignment: CrossAxisAlignment.end, // x축
        children: [
          Container(
            color: Colors.green, 
            child: const Padding( // refactor로 padding 손쉽게 넣을 수 있음
              padding: EdgeInsets.all(16.0),
              child: Text("First Hello, world!"),
            ),
          ),
          const SizedBox( // swiftui spacer 사이즈 준 거랑 비슷한 듯
            height: 30,
            width: double.infinity,
          ),
          Container(decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            width: 200,
            height: 200,
            child: const Center(
              child: Text("Hello",
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
              ),
            ), 
          )
        ],
      ),
    );
  }
}

// flutter는 모든 것은 widget으로 처리
// text는 Text widget, layout이면 Scaffold...

// 프로젝트 설명
// lib - dart파일이 들어가는 폴더
// 권한 등, platform-specific은 각자 ios, android 폴더에서 설정
// analysis_options.yaml - swiftlint같이 lint를 다룸, linter for dart 참고
// pubspec.yaml - 프로젝트 main configure, dependency(라이브러리) 추가 가능
//                dependency 추가 후, 터미널에서 flutter pub get 사용
//                assets에 이미지 추가 가능


// hot reload
// background 변경 등 이런 것들은 hot reload로 해결 가능
// widget 추가 등 큰 변경사항은 hot restart
// pubspec.yaml에 라이브러리 추가나, asset 추가는 새로 빌드를 하는 것이 좋음'

// widget 생성
// stless, stful 입력 -> build 함수까지 템플릿을 생성해줌

// class MyButton extends StatelessWidget {
//   const MyButton({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

// container
// basic widget, height, width를 가짐
// boxDecoration을 쓰면 color 사용 불가!, 위 소스 참고