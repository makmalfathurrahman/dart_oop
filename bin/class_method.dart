void main() {
  var person = Person();
  person.sayHello("Alex", 20);
}

class Person {
  var name = "Nick";

  void sayHello(String name, int age) {
    // This is how to access variable name using ${this.name}
    print("Hello ${this.name}, my name is $name and I'am $age");
  }
}
