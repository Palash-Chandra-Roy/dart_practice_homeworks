/*
Assignment 1: Inheritance and Method Overriding
Create a class Animal with properties name and age and a method makeSound().
Create two subclasses Dog and Cat that inherit from Animal and override the makeSound() method to print "Woof!" and "Meow!" respectively.
Test the classes by creating objects of Dog and Cat and calling their makeSound() methods.

 */

import 'dog.dart';
import 'cat.dart';
void main(){

  Dog dog = Dog( "baby", 12);
  
  dog.display("baby",12);
  dog.makeSound(); 
  
  Cat cat =Cat("lala", 12);
  cat.display("lala",10);
  cat.makeSound(); 
   
   

}