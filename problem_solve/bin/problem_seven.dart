/*
Assignment 7: Method Chaining
Create a class named Calculator with methods add(int value), subtract(int value), and multiply(int value).
Each method should return the current instance (this) to enable method chaining.
Test the class by chaining methods like calculator.add(10).subtract(5).multiply(2) and print the result.

 */

class Calculator {
  int _result = 0;

  Calculator add(int value) {
    _result += value;
    return this;
  }

  Calculator substict(int value) {
    _result -= value;
    return this;
  }

  Calculator multiply(int value) {
    _result *= value;
    return this;
  }

  Calculator dividet(int value) {
    _result ~/= value;
    return this;
  }

  int get result => _result;
}

void main() {
  var calculator = Calculator();

  var result = calculator.add(20).substict(5).multiply(2).dividet(3)._result;
  print(result);
}
