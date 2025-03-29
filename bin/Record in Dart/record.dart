//Record in    Dart and Swap;

(int, int) swap((int, int) record) {
  var (a, b) = record;
  return (a, b);
}

void main() {
  (int x, int y, int z) point = (1, 2, 3);
  (int a, int b, int c) color = (1, 2, 4);

  print(point == color);

  var record = (10, 12);
  var swapped = swap(record);

  print("a= ${swapped.$1}, b=${swapped.$2} ");
}
