//Exceptions Example;

/*void main() {
  String message = "Hello dart";
  print("This is message: ${message[10]}");
  print("Bye!");
}
*/
// Try Catch hendel in Exceptions;
void main() {
  String message = "Hello";
  try {
    print("this is message: ${message[6]}");
  } catch (e) {
    print(e);
  }
  print("Bye! ");
}
