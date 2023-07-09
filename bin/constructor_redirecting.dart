void main() {
  var person = Person("Alex", "Indonesia", 20);
  print(person.name);
  print(person.address);
  print(person.age);

  var personName = Person.name("Brandon");
  print(personName.name);
  print(personName.address);
  print(personName.age);

  var personAddress = Person.address("Jakarta");
  print(personAddress.name);
  print(personAddress.address);
  print(personAddress.age);

  var personAge = Person.age(100);
  print(personAge.name);
  print(personAge.address);
  print(personAge.age);

  var personWithAddress = Person.withAddress();
  print(personWithAddress.name);
  print(personWithAddress.address);
  print(personWithAddress.age);

  var personWithAge = Person.withAge();
  print(personWithAge.name);
  print(personWithAge.address);
  print(personWithAge.age);
}

class Person {
  String name;
  String address;
  int age;

  Person(this.name, this.address, this.age);

  Person.name(String name) : this(name, "//No Address//", 0);

  Person.address(String address) : this("//No Name//", address, 0);

  Person.age(int age) : this("//No Name//", "//No Address//", age);

  Person.withAddress() : this.address("Semarang");

  Person.withAge() : this.age(50);
}
