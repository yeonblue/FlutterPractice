void main(List<String> args) {
  // for문 차이: index 사용 X, loop를 manipulate 할 수 없음, 값을 변경 불가

  List<int> numberList = [1,2,3,4,5,6,7,8];
  List<int> secondList = [];

  numberList.forEach((element) {
    print("elementValue: $element");
    element++; // 해도 값 자체는 변경되지 않음, element는 copy value
    secondList.add(element);
  });

  print(numberList);
  print(secondList);
}