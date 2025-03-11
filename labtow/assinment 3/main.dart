/*
Assignment 3: Interfaces
Define an abstract class Logger with an abstract method log(String message).
Create two classes ConsoleLogger and FileLogger that implement the Logger interface.
Test the classes by logging messages to the console and a file (simulate file logging by printing to the console).

 */
import 'consoleLogger.dart';
import 'fileLogger.dart';

void main() {
  var consolelogger = Consolelogger();
  var filelogger = Filelogger();
  consolelogger.log("This is message to Console");
  filelogger.log("This is message to file");
}
