void main() {
  var run = Run();
  run.name = "run";
  print(run.name);
  run.play();
  run.stop();

  var read = Read();
  read.name = "read";
  print(read.name);
  read.play();
  read.stop();
}

mixin Play {
  String? name;

  void play() {
    print("Play $name");
  }
}

mixin Stop {
  String? name;

  void stop() {
    print("Stop $name");
  }
}

// Use with to copy mixin
class Run with Play, Stop {}

class Read with Play, Stop {}
