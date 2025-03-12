class Point {
  int x;
  int y;
  Point({required this.x, required this.y});

  Point operator +(Point other) {
//ToDo
    return Point(x: this.x + other.x, y: this.y + other.y);
  }
}

void main() {
  var p1 = Point(x: 10, y: 20);
  var p2 = Point(x: 10, y: 20);

  var p3 = p1 + p2; // p3.x //20 p3.y //40 // +Operator overloading

  print("p3.x = ${p3.x}");
  print("p3.y = ${p3.y}");
}
