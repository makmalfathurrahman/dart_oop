void main() {
  var person = Person();
  person.name = "Erick";
  person.sayHello("Alex", 20);

  var teacher = Teacher();
  teacher.name = "Kate";
  print(teacher.name); // Name from parent "Person"
  teacher.sayHello("Anna", 50);
}

class Person {
  String? name;

  void sayHello(String name, int age) {
    print("Hello ${this.name}. My name is $name and I'm $age years old");
  }
}

class Teacher extends Person {
  // Use @override to define different void sayHello body from parent "Person"
  @override // Method overriding
  void sayHello(String name, int age) {
    print("My name is $name and I'm $age years old. I'm a teacher");
  }
}
