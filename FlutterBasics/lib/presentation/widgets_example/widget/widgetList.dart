import 'package:flutter/material.dart';
import 'package:flutterbasics/presentation/components/custom_button.dart';
import 'package:flutterbasics/presentation/widgets_example/widget/button_example.dart';
import '../../components/custom_button_gesture.dart';
import 'expanedRowExample.dart';
import 'HelloWorldExample.dart';
import 'columnData.dart';

// extract 기능으로 손쉽게 추출 가능
class WidgetList extends StatelessWidget {
  const WidgetList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // const Expanded(child: Text("Last"),),
            // 높이가 const가 아니므로 크기를 결정할 수 없어 표시가 되지 않음(NEEDS-COMPOSITING-BITS-UPDATE)
            // singlechildscrollview에서는 Expaneded 불가
            const ExpanedRowExample(),
            const HelloWorldExample(),
            const ColumnData(),
            const ButtonExample(),
            SizedBox(
              child: CustomButton(
                  onTap: () {
                    print('CustomButton Tapped');
                  },
                  icon: Icons.home,
                  iconColor: Colors.white),
            ),
            SizedBox(
              child: CustomButtonGesture(
                onTap: () {
                  print('CustomButtonGesture Tapped');
                },
                text: 'Button',
              ),
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

// SingleChildScrollView
// ios, android는 다른 physic을 가짐, expaneded는 쓰지 말것

// layoutbuilder
// context와 constraints를 가지고 builder 정의, parent의 사이즈를 가지고 구현 가능