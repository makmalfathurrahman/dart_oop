void main() {
  var car = Car();
  print(car.name);
  car.drive();
  print(car.getTire());
  print(car.getBrand());
}

class Vehicle {
  String name = "";

  void drive() {}

  int getTire() {
    return 0;
  }
}

// Multiple Interface Inheritance
// Better use abstract class to implements interface
abstract class Brand {
  String getBrand();
}

class Car implements Vehicle, Brand {
  // Implements Vehicle
  @override
  String name = "Car";

  @override
  void drive() {
    print("I drive Car");
  }

  @override
  int getTire() {
    return 4;
  }

  // Implements Brand
  @override
  String getBrand() => "Toyota";
}
