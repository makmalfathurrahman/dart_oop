void main() {
  var person = Person();
  person.name = "Alex";
  person._age = 50;

  print(person.sayHello());
  print(person._getName());
  print(person.name);
  print(person._age);
}

class Person {
  String? name;
  int? _age;

  // Access Modifier for return value
  String sayHello() {
    return "$_age From sayHello";
  }

  // Access Modifier for method
  String _getName() {
    return "$name From _getName";
  }
}
