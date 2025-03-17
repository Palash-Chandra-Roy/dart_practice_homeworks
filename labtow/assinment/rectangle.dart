import 'shape.dart';

class Rectangle extends Shape {
  double height;
  double width;
  Rectangle(this.height, this.width);

  @override
  double area() {
    return height * width;
  }
}
