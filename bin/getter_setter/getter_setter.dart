void main() {}

class Person {
  String? _name;
  int? _age;

  // Get and Set var name
  String? get name {
    // Validation
    if (_name == null) {
      return "getter _name is null";
    } else {
      return _name;
    }
  }

  set name(String? value) => _name = value;

  // Get and Set var age
  int? get age => _age;

  set age(int? value) {
    if (value! > 0) {
      _age = value;
    } else {
      print("setter _age is null");
    }
  }
}
