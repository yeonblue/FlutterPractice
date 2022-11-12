void main(List<String> args) {
  Car car1 = Car(color: "Red", engine: "v1");
  print(car1.color);
}

class Car {

  //! attribute
  final String color;
  final String engine;

  //! init
  Car({required this.color, required this.engine});

  //! methods
  void drive() {
    print("$color color car is moving");
  }

  void printColor() {
    print("Car color: $color");
  }
}