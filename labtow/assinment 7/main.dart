/*
Assignment 7: Extension Methods
Define an extension method toTitleCase() on the String class that converts a string to title case (e.g., "hello world" → "Hello World").
Test the extension method by converting a few strings to title case and printing the results.
 */
extension TitleCaseExtension on String {
  String toTitleCase() {
    return this
        .split(' ')
        .map((word) => word.isNotEmpty
            ? word[0].toUpperCase() + word.substring(1).toLowerCase()
            : '')
        .join(' ');
  }
}

void main() {
  // Testing the toTitleCase() extension method
  String text1 = "hello world";
  String text2 = "dart is awesome";
  String text3 = "mIXed cASe STRING";

  print(text1.toTitleCase()); // Output: Hello World
  print(text2.toTitleCase()); // Output: Dart Is Awesome
  print(text3.toTitleCase()); // Output: Mixed Case String
}
