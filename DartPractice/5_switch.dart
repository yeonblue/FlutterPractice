void main(List<String> args) {
  final String name = "Harry";

  switch (name) { // swift와 달리 () 필요
    case "Sam":
      print("Sam!");
      break;
    case "Peter":
      print("Peter");
      break;
    default:
      print("unknown name");
      break;
  }
}