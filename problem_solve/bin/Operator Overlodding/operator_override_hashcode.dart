/*
Override == operator and also override the hashCode for
Position class.
 */

//
class Position {
  final int x;
  final int y;

  Position({required this.x, required this.y});

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Position && other.x == x && other.y == y;
  }

  @override
  int get hashCode => Object.hash(x, y); // More reliable hash function
}

void main() {
  var pos1 = Position(x: 5, y: 10);
  var pos2 = Position(x: 5, y: 10);
  var pos3 = Position(x: 2, y: 3);

  print(pos1 == pos2); // true
  print(pos1 == pos3); // false

  // Using Set to test hashCode effectiveness
  var positionSet = <Position>{pos1, pos2, pos3};
  print(
      positionSet.length); // Output: 2 (pos1 and pos2 are treated as the same)
}
