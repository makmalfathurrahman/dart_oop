void main() {
  // var location = Location() // Error because using abstract class

  var country = Country();
  country.sayLocation("Indonesia");
}

abstract class Location {
  String? name;
  void sayLocation(String name);
}

class Country extends Location {
  @override
  void sayLocation(String name) {
    print("The location is $name");
  }
}
