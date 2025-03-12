/*
Assignment 5: Generics
Create a generic class Box<T> that can store a value of any type.
Add a method getValue() that returns the stored value.
Test the class by creating Box objects with different types (e.g., int, String, double) and retrieving their values.

 */

import 'box.dart';

void main() {
  // Creating Box objects with different types
  var intBox = Box<int>(100);
  var stringBox = Box<String>("Hello, Dart!");
  var doubleBox = Box<double>(99.99);

  // Retrieving and printing values
  print("Integer value: ${intBox.getValue()}"); // 100
  print("String value: ${stringBox.getValue()}"); // Hello, Dart!
  print("Double value: ${doubleBox.getValue()}"); // 99.99
}
