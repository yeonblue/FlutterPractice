void main(List<String> args) {
  int number = 2;
  
  pow(number);
  print(powWithReturnValue(4)); // named parameter가 아니므로 argument label이 없어도 사용 가능

  int number1, number2;
  number1 = 4;
  number2 = 5;

  add(num1: number1, num2: number2);
  print(addRetrunValue(num1: 10));
  print(addRetrunValue(num1: 10, num2: 20));
}

void pow(int x) {
  print(x*x);
}

int powWithReturnValue(int x) {
  return x*x;
}

 void add({required int num1, required int num2}) { // {} 는 named parameter라는 의미
  int result = num1 + num2;
  print(result);
 }

  int addRetrunValue({required int num1, int num2 = 10}) { // requird를 빼려면 기본값을 넣어 줘야 함
  int result = num1 + num2;
  return result;
 } 