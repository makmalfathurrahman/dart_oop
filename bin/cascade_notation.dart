void main() {
  // var person1 = Person()
  // person.name = "Alex";
  // person.address = "Indonesia";
  // person.age = 20;

  // Better use cascade notation 🡣🡣🡣

  // Cascade notation with ..
  var person1 = Person()
    ..name = "Alex"
    ..address = "Indonesia"
    ..age = 20;
  print(person1.name);
  print(person1.address);
  print(person1.age);

  // or

  var person2 = createPerson()
    // Cascade notation with ?.. if the value is null
    ?..name = "Brandon"
    ..address = "Brazil"
    ..age = 100;
  print(person2?.name);
  print(person2?.address);
  print(person2?.age);
}

class Person {
  String? name;
  String? address;
  int? age;
}

Person? createPerson() {
  return null;
}
