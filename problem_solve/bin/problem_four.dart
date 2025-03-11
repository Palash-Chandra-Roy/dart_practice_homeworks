/* Assignment 4: Polymorphism
Create a class named Shape with a method draw() that prints "Drawing a shape".
Create two subclasses Circle and Rectangle that override the draw() method to print "Drawing a circle" and "Drawing a rectangle", respectively.
Create objects of Circle and Rectangle and call the draw() method for each.
 */

class Shope {
  // String product;
  // double itemCount;

  // Shope(this.product, this.itemCount);

  void drow() {
    print("Wrawing a shape");
  }
}

class Circle extends Shope {
  @override
  void drow() {
    // TODO: implement drow
    print("Drawing  a Circle");
  }
}

class Rectangle extends Shope {
  @override
  void drow() {
    print("Drawing a Rectangle");
  }
}

void main() {
  Shope shope = Shope();

  Circle circle = Circle();
  Rectangle rectangle = Rectangle();
  shope.drow();
  circle.drow();
  rectangle.drow();
}
