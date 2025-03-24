void fun() {
  String message = "hello";
  try {
    print("This is message: ${message[8]}");
  } catch (e, s) {
    print(e);
    print(s);
  }
}

void main() {
  fun();

  print("Bye");
}
