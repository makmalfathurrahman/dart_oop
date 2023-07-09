import 'access_modifier.dart';

void main() {
  var person = Person();
  person.name = "Brandon";
  // Error. Variable with _ cannot be accessed
  // person._age = 100;

  // Error. Method with _ cannot be accessed
  // person._getName()
}
