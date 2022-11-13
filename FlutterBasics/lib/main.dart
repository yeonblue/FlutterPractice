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

      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 127, 183, 216),
        appBar: AppBar(
          title: const Text("Flutter Basics"),
          ), 
        body: const CenterText(),
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
    return const Center(
      child: Text("Hello, World!"), // parent(Center)가 const므로 child는 const로 안해도 됨
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