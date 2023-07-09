void main() {
  var person = Person("Alex Brandon");
  print(person.firstName);
  print(person.lastName);
  print(person.fullName);

  var number = Number([1, 2, 3, 4]);
  print(number.firstNumber);
  print(number.secondNumber);
  print(number.thirdNumber);
  print(number.listNumber);
}

class Person {
  String firstName = '';
  String lastName = '';
  String fullName = '';

  Person(this.fullName)
      : firstName = fullName.split(" ")[0],
        lastName = fullName.split(" ")[1] {
    print("Create new person");
  }
}

class Number {
  int firstNumber = 0;
  int secondNumber = 0;
  int thirdNumber = 0;
  List listNumber = [];

  Number(this.listNumber)
      : firstNumber = listNumber[0],
        secondNumber = listNumber[1],
        thirdNumber = listNumber[2] {
    print("Create number list");
  }
}
