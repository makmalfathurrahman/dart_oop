void main() {}

abstract class Program {
  String? name;
}

mixin Play on Program {
  void play() {
    print("Play");
  }
}

mixin Stop on Program {
  void stop() {
    print("Stop");
  }
}

class Run extends Program with Play, Stop {}

// Error because limitation mixin
// class Run with Play, Stop {} 
