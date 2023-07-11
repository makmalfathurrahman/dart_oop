void main() {
  // Call from class Person
  print(Person.name);
  print(Person.age);

  // Using final because variable could change
  // Person.age = 10; // Error

  // Call from class Sum
  print(Sum.result(10, 5));
}

class Person {
  static final String name = "Alex";
  static final int age = 20;
}

class Sum {
  static int result(int num1, int num2) => num1 + num2;
}
