void main(List<String> args) {
  Car car1 = Car();
  car1.color = "Red";
  car1.printColor();

  Car car2 = Car();
  car2.color = "Blue";
  car2.printColor();
}

class Car {

  //! attribute
  late String color;

  //! methods
  void drive() {
    print("$color color car is moving");
  }

  void printColor() {
    print("Car color: $color");
  }
}