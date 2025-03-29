void main() {
  // Function to extract name, age, salary, and department from JSON
  (String, int, double, String) userInfo(Map<String, dynamic> json) {
    return (
      json['name'] as String,
      json['age'] as int,
      json['salary'] as double,
      json['Depertment'] as String, // Corrected key
    );
  }

  final json = <String, dynamic>{
    'name': 'Palash',
    'age': 24,
    'color': 'blue',
    'salary': 10000.00,
    'Depertment': 'Flutter' // Corrected key format
  };

  // Destructuring using a record pattern:
  var (name, age, salary, depertment) = userInfo(json);

  // Extracting color separately
  var color = json['color'] as String;

  print(
      "name: $name, age: $age, color: $color, salary: $salary, Depertment: $depertment");
}
