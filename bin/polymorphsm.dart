void main() {
  // var rectangle = Rectangle(4);
  // print(rectangle.corner);

  // var circle = Circle(1);
  // print(circle.corner);

  // Polymorphsm
  Shape shape = Shape(0);
  print(shape);
  print(shape.corner);

  shape = Rectangle(4);
  print(shape);
  print(shape.corner);

  shape = Circle(1);
  print(shape);
  print(shape.corner);

  // Method polymorphsm
  sayShape(Shape(0));
  sayShape(Rectangle(4));
  sayShape(Circle(1));
}

class Shape {
  int? corner;
  Shape(this.corner);
}

class Rectangle extends Shape {
  Rectangle(int corner) : super(corner);
}

class Circle extends Shape {
  Circle(int corner) : super(corner);
}

// Method Polymorphsm
void sayShape(Shape shape) {
  // Type Check and Casts
  if (shape is Rectangle) {
    // Check data type
    Rectangle rectangle = shape;
    print("Rectangle has ${rectangle.corner} corner");
  } else if (shape is Circle) {
    // Check data type
    Circle circle = shape;
    print("Circle has ${circle.corner} corner");
  } else {
    print("Shape has ${shape.corner} corner");
  }
}
