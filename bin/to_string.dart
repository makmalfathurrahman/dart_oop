void main() {
  var person = Person();
  person.name = "Alex";
  person.age = 20;
  // No need to use person.toString to call the function because it's toString
  print(person);
}

class Person {
  String? name;
  int? age;

  String toString() {
    return "Hello, my name is $name. I'm $age years old";
  }
}
