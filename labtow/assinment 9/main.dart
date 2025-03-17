/*
Assignment 9: Callable Objects
Create a class Adder that implements the call() method to add two integers.
Test the class by creating an instance of Adder and calling it like a function (e.g., adder(3, 5) should return 8).
 
 */

import 'adder.dart';

void main() {
  Adder adder = Adder();
  int result = adder(3, 5);

  print("Result : $result");
}
