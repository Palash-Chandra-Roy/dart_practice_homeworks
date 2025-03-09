class Point extends Object {
  int x = 0;
  int y = 0;
  Point(this.x, this.y);
  @override
  String toString() {
    return "x=$x, y=$y";
  }
}

class Position extends Point {
  int z = 0;
  Position(int x, int y, this.z) : super(x, y);

  @override
  String toString() {
    // TODO: implement toString
    return "${super.toString()}, z=$z";
  }
}

void main() {
  Point point = Point(12, 20);
  print("Enter your value number: $point");
  print(point.toString());

  Position position = Position(10, 20, 23);
  print("Enter your value number: $position");
}
