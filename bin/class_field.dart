void main() {
  var animal = Animal();
  print(animal.name);
  print(animal.type);
  print(animal.foot);

  animal.type = "Mamals";
  print(animal.type);
  // animal.foot = 5; // Error. Because the variable is final
}

class Animal {
  var name = "Cat";
  String? type;
  final foot = 4;
}
