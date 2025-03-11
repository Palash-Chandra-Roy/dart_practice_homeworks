/*
Assignment 2: Abstract Classes
Define an abstract class Shape with an abstract method area().
Create two concrete classes Circle and Rectangle that inherit from Shape and implement the area() method.
Test the classes by calculating and printing the area of a circle and a rectangle.

*/

import 'circle.dart';
import 'rectangle.dart';
void main(){
  Circle circle = Circle(5);
  
  Rectangle rectangle = Rectangle(10, 20);
  
  print("Calculationg Circle : ${circle.area()}");
  
  print("Calucating area fo Rectangle: ${rectangle.area()}");

}