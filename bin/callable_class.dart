void main() {
  var sum = Sum(10, 5);
  // Call sum()
  print(sum());
}

class Sum {
  int num1;
  int num2;

  Sum(this.num1, this.num2);

  int call() => num1 + num2;
}
