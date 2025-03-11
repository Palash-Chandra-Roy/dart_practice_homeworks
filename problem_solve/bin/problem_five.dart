/*
Assignment 5: Constructor and Named Constructor
Create a class named Person with properties name (String) and age (int).
Add a default constructor and a named constructor Person.fromBirthYear that takes the birth year and calculates the age.
Create objects using both constructors and print their details.

 */
class Person {
  String name;
  int age;
  Person(this.name, this.age);

  Person.fromBirthYear(this.name, int birthYear)
    : age = DateTime.now().year - birthYear;

  void displayInfo() {
    print("Name: $name");
    print("Age: $age");
  }
}

void main() {
  Person person = Person("Palash Roy  ", 23);
  person.displayInfo();

  Person person1 = Person("Gobindo Roy ", 23);
  person1.displayInfo();
}
