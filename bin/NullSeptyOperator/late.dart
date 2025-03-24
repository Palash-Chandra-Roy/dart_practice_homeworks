class Meal {
  late String _description;

  set description(String desc) {
    _description = "Meal Descripton: ${desc}";
  }

  String get description => _description;
}

void main() {
  final myMeal = Meal();
  myMeal.description = "This is String!";
  print(myMeal.description);
}
