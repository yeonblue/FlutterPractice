void main(List<String> args) {
  Student student1 = Student();
  student1.setName = "Sam";
  student1.setSemester = 2;

  student1.showName();
  student1.showSemester();

  student1.study();
  student1.jump();
}

class Person {
  late String _name;
  late int _age;

  String get getName => this._name;
  int get getAge => this._age;

  set setName(String name) {
    this._name = name;
  }

  set setAge(int age) {
    this._age = age;
  }

  void showName() {
    print("name: $_name");
  }
}

class Student extends Person with Learner, Jumper { // 여러 mixin 사용 가능
  late int _semester;

  int get getSemester => this._semester;
  set setSemester(int semester) {
    this._semester = semester;
  }

  void showSemester() {
    print("name: $_name, semester: $_semester");
  }
}

mixin Learner { // swift에서 protocol을 여러개 받을 수 있듯이 비슷하게 보면 될 듯, with와 사용, 상속은 extends
  void study() {
    print("study");
  }
}

mixin Jumper {
  void jump() {
    print("jump");
  }
}