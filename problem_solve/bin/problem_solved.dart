/*Assignment 1: Class and Object Basics
Create a class named Student with the following properties:
name (String)
age (int)
cgpa (double)
Add a method showDetails() that prints the student's details.
Create two objects of the Student class and call the showDetails() method for each.
*/

class Student {
  String name;
  double cgpa;
  int year;

  Student(this.name, this.cgpa, this.year);
  void showDetails() {
    print("Studen name: $name, year: $year , CGPA: $cgpa");
  }
}

void main() {
  Student student = Student("palash", 3.73, 2021);
  Student student1 = Student("Roy ", 4.86, 2017);

  student.showDetails();
  student1.showDetails();
}
