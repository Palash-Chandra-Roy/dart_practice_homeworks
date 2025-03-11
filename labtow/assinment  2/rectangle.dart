import 'abstract.dart';

class Rectangle extends Shape{

  double height, width; 

  Rectangle(this.height, this.width);

@override
  double area(){
    return height * width; 
  
  }
}