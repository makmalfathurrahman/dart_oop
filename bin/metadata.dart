void main() {}

class Sample {
  @override // Overriding from parent class
  String toString() {
    return "Hello!";
  }

  @Deprecated("Don't use it anymore!")
  void notReccomended() {}
}

class Todo {
  final String todo;

  const Todo(this.todo);
}

@Todo("Implementing Todo") // It can implemented everywhere
class TodoImplementation {
  @Todo("Implementing Todo")
  var todo;

  @Todo("Implementing Todo")
  void run() {}

  @Todo("Implementing Todo")
  String sayHello() {
    return "Hello";
  }
}
