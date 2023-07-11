void main() {
  var sum = Sum(10, 5);
  print(sum());

  // Call with defined typedef variable
  var result = Result(10, 10);
  print(result());

  var total = Total(0, 10);
  print(total());
}

class Sum {
  int num1;
  int num2;

  Sum(this.num1, this.num2);

  int call() => num1 + num2;
}

typedef Result = Sum;
typedef Total = Sum;
