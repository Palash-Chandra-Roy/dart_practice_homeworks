/*
Assignment 3: Inheritance
Create a class named Vehicle with properties brand (String) and year (int).
Add a method displayInfo() to print the vehicle's details.
Create a subclass Car that inherits from Vehicle and adds a new property mileage (double).
Override the displayInfo() method in the Car class to include the mileage.
Create an object of the Car class and call the displayInfo() method. 
*/
class SoftwareDeveloper {
  String name;
  String position;
  int salary;

  SoftwareDeveloper(this.name, this.position, this.salary);

  void displayInfo() {
    print("SoftwareDeveloper:$name");
    print("Positions:$position");
    print("Salary:$salary");
  }
}

class Python extends SoftwareDeveloper {
  String python;

  Python(String name, String position, int salary, this.python)
    : super(name, position, salary);

  @override
  void displayInfo() {
    super.displayInfo();
    print("SoftwareDevelpment: $python");
  }
}

void main() {
  Python newDeveloper = Python("Palash", "Software Engineer", 21000, "Python");
  newDeveloper.displayInfo();
}
