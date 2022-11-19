import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // stateless므로 변화하지 않음
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 모든 widget은 build function을 가짐, flutter는 widget tree 구조
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(backgroundColor: Colors.amber),
      ),
      debugShowCheckedModeBanner: false, // 우측 상단 디버그 사라지게
      home: Scaffold(
        // one page를 의미(basic layout)
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
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.max, // 안그러면 길이가 최대로 잡힘, max도 마찬가지
          crossAxisAlignment: CrossAxisAlignment.center, // x축
          children: [
            const Expanded(child: Text("Last"),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(
                  flex: 1, // 비율을 의미, flex를 두개를 10, 10 주면 50%, 50% 차지
                  child: Text("1. row1 veryverylong sentences..........."),
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
            ),
            Container(
              color: Colors.green,
              child: const Padding(
                // refactor로 padding 손쉽게 넣을 수 있음
                padding: EdgeInsets.all(16.0),
                child: Text("First Hello, world!"),
              ),
            ),
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
            const SizedBox(height: 16,),
            const SizedBox(
              width: 100,
              height: 100,
              child: CircleAvatar(
                  backgroundImage: NetworkImage("https://picsum.photos/200")),
            ),
            Stack( // swiftui의 zstack 비슷한 듯
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
                Container(
                  width: 100,
                  height: 500,
                  color: Colors.green,
                  child: const Text("Last Text"),
                ) 
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// flutter는 모든 것은 widget으로 처리
// text는 Text widget, layout이면 Scaffold...r

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

// column
// vertical로 childrun 표시, scroll 불가

// row: horizental 표시, scroll 불가
// flexible: 여러 flexible 위젯이 있으면 flex 값을 줘서 비율 정하기 가능
// expanded: flex 값 내에서 허용된 너비를 모두 사용

// assets: pubspec.yaml에서 추가 가능
// pubspec.yaml 수정 시, flutter pub get 명령어 수행