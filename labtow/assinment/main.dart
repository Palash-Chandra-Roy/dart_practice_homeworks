/*
 onus Assignment: Generics with Constraints
Create a generic class Region<T extends Shape> that stores a list of shapes and calculates the total area of all shapes in the region.
Test the class by creating a Region with a mix of Circle and Rectangle objects and printing the total area.

 */

import 'circle.dart';
import 'rectangle.dart';
import 'regain.dart';
import 'shape.dart';

void main() {
  Circle circle = Circle(20);
  Rectangle rectangle = Rectangle(12, 20);

  print(" Circle : ${circle.area()}");
  print(" Rectangle: ${rectangle.area()}");

  Regain<Shape> regain = Regain<Shape>();

  regain.addShape(Circle(5));
  regain.addShape(Rectangle(10, 20));

  // Printing the total area of all shapes in the region
  print("Total area of all shapes in the region: ${regain.totalArea}");
}
