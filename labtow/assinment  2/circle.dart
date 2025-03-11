
import 'dart:math';

import 'abstract.dart';
class Circle extends Shape{

  double radius; 
  Circle(this.radius);

  double area(){
    return pi * radius * radius; 

  }

}