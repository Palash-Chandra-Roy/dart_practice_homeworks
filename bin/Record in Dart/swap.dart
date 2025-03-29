List<int> swap(int a, int b) {
  return [a, b];
}

void main() {
  int a = 10, b = 20;
  var result = swap(a, b);
  a = result[0];
  b = result[1];
  print("Enter result a: $a, and result b:$b");
}
