// on IntegerDivisionByZeroException;
void main() {
  int a = 12;
  int b = 0;
  int res;
  try {
    res = a ~/ b;
  } on IntegerDivisionByZeroException catch (e) {
    print("Zero Exception");
    print(e);
  } finally {
    print("Finally Block Exception");
  }
}
