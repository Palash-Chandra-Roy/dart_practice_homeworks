//Cascade notation: double dot(..)
class Point {
  int x = 0;
  int y = 0;

  void display() {
    print("x: $x, y: $y");
  }

  void move(int x, int y) {
    this.x = x;
    this.y = y;
  }

  void reset() {
    this.x = 0;
    this.y = 0;
  }

  void show() {
    print('Point($x,$y)');
  }
}

void main() {
  var p1 =
      Point()
        ..x = 10
        ..y = 20
        ..display();

  p1.show();
}
