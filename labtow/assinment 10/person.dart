class Person {
  String name;
  int age;

  Person(this.name, this.age);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    // TODO: implement ==
    return other is Person && other.name == name && other.age == age;
  }

  @override
  // TODO: implement hashCode
  // int get hashCode => Object.hash(name, age);

  int get hashCode {
    return name.hashCode ^ age.hashCode;
  }
}
