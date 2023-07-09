void main() {
  var rectangle = Rectangle();
  print(rectangle.getCorner());
  print(rectangle.getParentCorner());

  var teacher = Teacher("Anna");
  print(teacher.name);
}

class Shape {
  int getCorner() {
    return 0;
  }
}

// Super
class Rectangle extends Shape {
  @override
  int getCorner() {
    return 4;
  }

  int getParentCorner() {
    // Use super keyword to get parent "Shape" return value
    return super.getCorner();
  }
}

// Super Constructor
class Person {
  String? name;
  Person(this.name);
}

class Teacher extends Person {
  // This constructor must be called because parent "Person" also has a constructor
  Teacher(String name) : super(name) {
    print("Create new teacher");
  }
}
