void main() {
  // Must use const
  var number1 = const Point(10, "Ten");
  var number2 = const Point(10, "Ten");

  print(number1 == number2);
}

class Point {
  final num1;
  final num2;

  const Point(this.num1, this.num2);
}
