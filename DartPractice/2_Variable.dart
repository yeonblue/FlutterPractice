void main(List<String> args) {
  int output = 2;
  var output2 = 3;

  print("output: $output, output2: $output2");
  // terminal에서 dart Variable.dart 와 같이 터미널에서 동작도 가능

  late int lateInt; // declaration

  //print("lateInt: $lateInt") late로 선언했으면 할당을 해주고 사용해야 함
  lateInt = 4; // allocation
  print("lateInt: $lateInt");
}