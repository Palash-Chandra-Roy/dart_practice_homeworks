/*
void fun() {
  String message = "Hello";
  try {
    print("This is message: ${message[8]}");
  } on RangeError {
    print("this is message:[0..${message.length - 3}]");
  } catch (e) {
    print(e);
  }
}

*/
// on RangeErrror catch Example
void fun() {
  String message = "Hello";
  try {
    print("this is message:${message[8]}");
  } on RangeError catch (e) {
    print(e);
  } catch (e) {
    print(e);
  }
}

void main() {
  fun();
  print("Bye! ");
}
