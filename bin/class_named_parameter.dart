void main() {
  var person = Person(name: "Alex");
  print(person.name);
  print(person.address);
  print(person.age);

  var personName = Person.onlyName(name: "Danny");
  print(personName.name);
  print(personName.address);
  print(personName.age);

  var personAge = Person.onlyAge(age: 100);
  print(personAge.name);
  print(personAge.address);
  print(personAge.age);
}

class Person {
  String? name;
  String address = "Indonesia";
  int? age;

  Person({required this.name, this.address = "Indonesia", this.age});

  Person.onlyName({this.name});

  Person.onlyAge({this.age});
}
