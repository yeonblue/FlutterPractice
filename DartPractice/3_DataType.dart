void main(List<String> args) {

  // primitive type
  bool isSelected = false;
  isSelected = true;
  print(isSelected);

  int intValue = 3;
  double doubleValue = 4.5;
  print("$intValue, $doubleValue");

  // complex type
  String a = "hello";
  print(a);
  print('hello'); // ', " 둘 다 사용 가능

  dynamic dynamicVariable = 5;
  dynamicVariable = "dynamic";
  print(dynamicVariable); // Any랑 비슷, 사용은 권장하지 않음

  // keywords
  late int lateint;
  lateint = 3;
  print(lateint);

  final int finalInt; // let 이랑 같다고 봐도 됨, 한 번 할당 이후 사용 불가, 하지만 할당 없이 사용하면 컴파일 에러
  finalInt = 1; // lifecycle 동안 유지
  final int finalSetInt = 2;
  print(finalInt);
  print(finalSetInt);

  const int constIntValue = 5;
  // const int constIntValue2; 초기화 없이 사용 불가, 컴파일 단계에서 값 할당, 변경 불가
  print(constIntValue);

  var name = "name";
  print(name);
}