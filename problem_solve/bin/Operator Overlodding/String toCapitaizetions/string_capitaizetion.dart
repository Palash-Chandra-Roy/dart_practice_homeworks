String toCapitalize(String text) =>
    "${text[0].toUpperCase()}${text.substring(1).toLowerCase()}";

void main() {
  var stringValue = 'hello bangladesh';
  print(toCapitalize(stringValue));
  print("Hello Palash");
}


/*
 // Make Capitalize using extension (Example)

extension on String {
String toCapitalize() =>
"${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
}

void main() {
var s = 'hello';
print(s.toCapitalize());
}
 */