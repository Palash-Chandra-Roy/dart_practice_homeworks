/*
Assignment 9: Const Constructor
Create a class named ImmutablePoint with final properties x (int) and y (int).
Add a const constructor to initialize the properties.
Create two objects of ImmutablePoint with the same values and use the identical() function to check if they are the same instance.

 */
class ImmutablePoint {
  final int x;
  final int y;

  // Const constructor
  const ImmutablePoint(this.x, this.y);
}

void main() {
  // Creating two objects with the same values using const
  const point1 = ImmutablePoint(3, 4);
  const point2 = ImmutablePoint(3, 4);

  // Checking if both instances are identical
  print(identical(point1, point2)); // Output: true
}
