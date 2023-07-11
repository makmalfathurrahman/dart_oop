void main() {
  var level = Level(1, Grade.bronze);
  print(level.level);
  print(level.grade);

  print(Grade.values);
}

enum Grade { bronze, silver, gold }

class Level {
  int level;
  Grade grade;

  Level(this.level, this.grade);
}
