//fun try catch e,s
void fun() {
  String message = " Palash";
  try {
    print("My Namae is: ${message[8]}");
  } catch (e, s) {
    print(e);
    print(s);
  }
}

void test_age(int age) {
  if (age < 0) {
    throw new FormatException(" A contant is Negetive ");
  }
}

void main() {
//throw new FormatException
  try {
    test_age(-2);
  } catch (e) {
    print(e);
  }

  //funtion tey catch
  fun();

  //try catch
  String name = " palash";
  try {
    print("my Name: ${name[8]}");
  } catch (e) {
    print(e);
  }
//on RangeError; and add to catch;
  try {
    print("The character at the position 5 is ${name[8]}.");
  } on RangeError catch (e) {
    print('The valid range for the index is [0..${name.length - 1}].');
    print(e);
  } catch (e) {
    print(e);
  }
//INtegerDivisionByZeroException try catch;
  int x = 12;
  int y = 0;
  int res;
  try {
    res = x ~/ y;
  } on IntegerDivisionByZeroException catch (e) {
    print('Cannot divide by zero');
    print(e);
  }
// finally try catch;
  try {
    res = x ~/ y;
  } on IntegerDivisionByZeroException catch (e) {
    print('Cannot divide by zero');
  } catch (e) {
    print(e);
  } finally {
    print('Finally block executed');
  }
}
