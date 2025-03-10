/*
Assignment 6: Static Fields and Methods
Create a class named Counter with a static field _count (int) to keep track of the number of instances created.
Add a static method getCount() to return the value of _count.
Increment _count in the constructor.
Create multiple objects of the Counter class and print the total count using the getCount() method.

 */
class Counter {
  static int _count = 0;

  Counter() {
    _count++;
  }

  static int getCount() {
    return _count;
  }
}

void main() {
  Counter count1 = Counter();
  Counter count2 = Counter();
  Counter count3 = Counter();
  Counter count4 = Counter();

  print("Total Counter instances: ${Counter.getCount()}");
}
