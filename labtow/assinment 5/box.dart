// Generic class Box<T>
class Box<T> {
  T value;

  // Constructor
  Box(this.value);

  // Method to retrieve the value
  T getValue() {
    return value;
  }
}
