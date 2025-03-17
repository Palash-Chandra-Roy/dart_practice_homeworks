//Exercise: Null checking
int getLength(String? str) {
// Add null check here
  return str!.length;
}

// Use to late variable;
class Model {
  late String _descrip;

  set descrip(String des) {
    _descrip = "Desh name: $des";
  }

  String get descrip => _descrip;
}

// Type Promotion Example:
class Person {
  late String name;
  late int age;

  Person({required this.name, required this.age});
}

void example(Person? value) {
  // print(value.name); , 'value' is not promoted to a Person, it is still nullable Person
  if (value is Person) {
    // Within this block, 'value' is promoted to a Person
    print(value.name); // This works because 'value' is promoted to String
  } else {
    print('Not a string');
  }
}

//Promotion with exceptions
void examples(dynamic value) {
  try {
    if (value is String) {
      // Within this block, 'value' is promoted to a String
      throw Exception('Something went wrong'); // Exception thrown
      print(value.toUpperCase()); // This line won't be executed
    } else {
      print('Not a string');
    }
  } catch (e) {
    print('Exception caught: $e');
  }
}

void main() {
  //Promotion with exceptions

  examples("hello"); // Exception caught:Exception:Something went wrong;
  examples(123); // Not a string

//Type Promotion Example:
  Person? person = Person(name: "John Doe", age: 30);
  example(person);

  Person? nullPerson;
  example(nullPerson);

  //user to late model variable;
  final mydesh = Model();
  mydesh._descrip = "Bangladesh";
  print(mydesh._descrip);

//Exercise: Null checking
  print(getLength("Hello dart"));

  // 1st Example
  var name = null;
  print(name?.length); // throws an exception
//The following code will print the value of defaultName if name is null, or the value of name if it is not null:

  var defaultName = "unknown";
  var newName = name ?? defaultName;
  print(newName); // prints "unknown"

//2nd Example
  var names = null;
  names ??= "Jane Doe";
  print(names); // prints "Jane Doe"

  print(name?.length); // prints null

//Exercise: Null-coalescing operators (??)
  String? nullableString = null;

  print(nullableString ?? 'asdfasdf');
  print(nullableString != null ? nullableString : 'bape bari ja ');

  nullableString ??= '';
  nullableString = nullableString == null ? nullableString : 'alternate';
  print(nullableString);
}
