void main() {
  // var location = Location(); // Error because using abstract class
  var country = Country("Indonesia");
  print(country.name);
}

abstract class Location {
  String name;
  Location(this.name);
}

class Country extends Location {
  Country(String name) : super(name);
}
