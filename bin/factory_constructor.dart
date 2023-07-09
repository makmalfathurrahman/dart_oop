void main() {
  var database1 = Database.fromValue(1);
  var database2 = Database.fromValue(1);

  // Result is true because Database.fromValue() return value is same
  print(database1 == database2);
}

class Database {
  Database() {
    print("Create new database");
  }

  static Database database = Database();

  factory Database.fromValue(int value) {
    if (value == 1) {
      return database;
    } else {
      print("Value is not same");
      throw Exception("Invalid value");
    }
  }
}
