void main() {
  var stuff1 = Stuff();
  stuff1.quantity = 10;

  var stuff2 = Stuff();
  stuff2.quantity = 15;

  var stuff3 = stuff1 + stuff2;
  print(stuff3.quantity);
}

class Stuff {
  int quantity = 0;

  Stuff operator +(Stuff other) {
    var result = Stuff();
    result.quantity = quantity + other.quantity;
    return result;
  }
}
