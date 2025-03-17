class Point {
  double x;
  double y;

  Point(this.x, this.y);

  //Overloading the + Operator;
  Point operator +(Point other) {
    return Point(this.x + other.x, this.y + other.y);
  }

  @override
  String toString() {
    return "Point(x : $x , Y: $y)";
  }
}
