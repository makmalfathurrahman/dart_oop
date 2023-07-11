void main() {
  var person = Person();

  var place = Place("Turkiye", "Istanbul"); // Will not be affected
  print(place.country);
  print(place.city);

  var vehicle = Vehicle("Car", "Toyota", 2023);
}

class Person {
  // Define constructor here
  Person({String? name, int? age, String address = "Indonesia"}) {
    print("Hello, my name is $name. I'm $age years old. I live in $address");
  }
}

// Shadowing variable
class Place {
  String country = "Indonesia";
  String? city;

  Place(String country, String city) {
    // This causes the shadowing variable
    country = country;
    city = city;
  }
}

// Better use "this" statement down here 🡣🡣🡣

// This
class Vehicle {
  var type;
  String? brand;
  int? year;

  // Vehicle(String type, String brand) {
  //   this.type = type;
  //   this.brand = brand;
  // }

  // Or use this simple code instead

  Vehicle(this.type, String this.brand, int this.year) {
    print("$type $brand $year");
  }
}
