void main(List<String> args) {

  print("List ---------");
  List list = [1,2,3,4,5];
  List<int> list2 = [1,2,3,4,5];
  print(list);
  print(list2[1]);

  print(list.length);
  print(list.first);
  print(list.last);
  print(list.isEmpty);
  print(list.firstWhere((element) => element > 2));

  list.add(6);
  print(list);

  print("Map ---------");

  Map<String, int> map = { // Map map = {}도 가능
    "key1": 1,
    "key2": 2,
    "key3": 3
  }; // map은 {} 사용

  print(map);
  print(map["key1"]);
  print(map.length);
}