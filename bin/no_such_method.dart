import 'dart:mirrors';

void main() {
  var repository = Repository("products");

  repository.id("1");
  repository.name("Hardware");
  repository.quantity(100);

  // Error because .type is not defined in CategoryRepository
  // repository.type()
}

// Abstract class noSuchMethod
abstract class CategoryRepository {
  id(String id);
  name(String name);
  quantity(int quantity);
}

class Repository extends CategoryRepository {
  final String _name;

  Repository(this._name);

  // Dynamic noSuchMethod
  @override
  dynamic noSuchMethod(Invocation invocation) {
    var column = MirrorSystem.getName(invocation.memberName);
    var value = invocation.positionalArguments.first;
    var sql = "SELECT * FROM $_name WHERE $column = '$value'";
    print(sql);
  }
}
