import 'getter_setter.dart';

void main() {
  var person = Person();
  person.name = null;
  print(person.name);

  person.age = 5;
  print(person.age);
}
