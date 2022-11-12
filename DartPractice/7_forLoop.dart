void main(List<String> args) {
  List<int> numberList = [1,2,3,4,5,6,7,8];
  List<int> secondList = [];

  for (int i = 0; i < numberList.length; i++) {
    if (numberList[i] % 2 == 0) {
    secondList.add(numberList[i]);
    }
  }

  print(numberList);
  print(secondList);
}