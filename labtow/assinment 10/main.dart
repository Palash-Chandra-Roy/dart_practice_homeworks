import 'person.dart';

/**
 Assignment 10: Object Equality and HashCode
Create a class Person with properties name and age.
Override the == operator and hashCode getter to compare Person objects based on their name and age.
Test the equality and hash code by creating two Person objects with the same name and age and verifying that they are considered equal.

 */

void main() {
  Person person1 = Person("palash", 24);
  Person person2 = Person("palash", 24);
  Person person3 = Person("Palash", 24);

  print(person1 == person2); // true
  print(person2 == person3); //false

  var personSet = <Person>{person1, person2, person3};

  print("Person1 HashCode: ${person1.hashCode}");
  print("Person2 HashCode: ${person2.hashCode}");
  print("Person3 HashCode: ${person3.hashCode}");

  print("Person Name: ${person1.name}");
  print("Person Age: ${person1.age}");

  print(personSet.length);
}
