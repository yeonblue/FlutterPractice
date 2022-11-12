void main(List<String> args) {
  Car car1 = Car();
  car1.setColor = "Red";
  car1.printColor();
  print(car1.color);
}

class Car {

  //! attribute
  late String _color;

  //! setter
  set setColor(String color) {
    _color = color;
  }

  //! getter
  String get color => this._color;

  //! methods
  void drive() {
    print("$_color color car is moving");
  }

  void printColor() {
    print("Car color: $_color");
  }
}