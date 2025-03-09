class Point {
  int x;
  int y;
  Point({required this.x, required this.y});
}

void main() {
  var p1 = Point(x: 10, y: 20);
  var p2 = Point(x: 10, y: 20);
  final result = p1 == p2;
  print(result);
}
//Output: false;
/*
class Point {
final int x;
final int y;
const Point({required this.x, required this.y});
}

void main() {
var p1 = const Point(x: 10, y: 20);
var p2 = const Point(x: 10, y: 20);
var result = identical(p1, p2); // or p1 == p2
print(result);
}

Output : true
*/
/*
class Point {
  int x;
  int y;
  Point({required this.x, required this.y});

  @override
  operator ==(o) => o is Point && o.x == this.x && o.y == this.y;
}

void main() {
  var p1 = Point(x: 10, y: 20);
  var p2 = Point(x: 10, y: 20);
  var result = p1 == p2;
  print(result);
}
Output: tru; 

*/
