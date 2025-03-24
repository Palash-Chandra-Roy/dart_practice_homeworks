void main() {
  int a = 12;
  int b = 0;
  int res;

  try {
    res = a ~/ b;
  } on IntegerDivisionByZeroException {
    print("this is Zero Exception");
  } catch (e) {
    print(e);
  } finally {
    print("Finally Block Exception");
  }
}
