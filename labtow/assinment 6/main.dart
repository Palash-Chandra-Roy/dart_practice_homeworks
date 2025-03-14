/*
Assignment 6: Factory Constructors
Create a class Logger with a private constructor and a factory constructor that returns a cached instance of Logger.
Use a static map to cache instances of Logger based on a name parameter.
Test the factory constructor by creating multiple Logger objects with the same name and verifying that they reference the same instance.
*/

import 'logger.dart';

void main() {
  //loggor & logger2 same value print in Data ;
  var loggor = Logger('console');
  loggor.log("hello ");

  var logger2 = Logger("console");
  logger2.log("Bye");

  var loger = Logger("console");
  loger.log("see you next day");
}
