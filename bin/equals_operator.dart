void main() {
  var comparison1 = Comparison(1, "Alex");
  var comparison2 = Comparison(1, "Alex");

  print(comparison1 == comparison2);

  // But it's false if we use .hashCode
  print(comparison1.hashCode == comparison2.hashCode);
  print(comparison1.hashCode);
  print(comparison2.hashCode);
}

class Comparison {
  var id;
  var name;

  Comparison(this.id, this.name);

  bool operator ==(Object other) {
    if (other is Comparison) {
      if (id != other.id) {
        return false;
      } else if (name != other.name) {
        return false;
      } else {
        return true;
      }
    } else {
      return false;
    }
  }
}
