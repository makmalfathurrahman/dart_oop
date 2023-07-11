void main() {
  var animal = Animal();
  animal.cat();
  animal.snake();
  animal.whale();
  animal.sayHello();
}

class Animal {
  void cat() {
    print("Cat is mamals");
  }

  void snake() => print("Snake is reptils");
  void whale() => print("Whale is fish");
}

// Extension Method
extension SayAnimal on Animal {
  void sayHello() {
    print("All of this are animals");
  }
}
