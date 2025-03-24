// Dart filter user for where;

//Where () method usering
class Person {
  String name = "";
  int age = 0;
  Person({this.name = '', this.age = 0});

  @override
  String toString() => name;
}

void main() {
  var pepole = [
    Person(name: "Palash", age: 24),
    Person(name: "Roy", age: 20),
    Person(name: "Gobindo", age: 18),
    Person(name: "Krishna", age: 16),
    Person(name: "Ram", age: 22),
    Person(name: "Hori", age: 26),
  ];

  var person = pepole.where((n) => n.age <= 20);
  print(person);

  var numbers = [20, 30, 10, 50, 60];
  var results = numbers.where((n) => n > 40);
  print(results);
}
