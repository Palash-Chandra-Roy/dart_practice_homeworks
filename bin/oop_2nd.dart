import 'package:oop_2nd/oop_2nd.dart' as oop_2nd;

class Duck {
  void quack() {
    print("Duck: Quack!");
  }

  void swim() {
    print("Duck: Swimming");
  }

  void display() {
    print("Duck: Displaying");
  }

  void fly() {
    print("Duck: Flying");
  }
}

class MallardDuck extends Duck {
  @override
  void display() {
    print("Mallard Duck: Displaying");
  }

  @override
  void fly() {
    print("Mallard Duck: Flying");
  }
}

class RedHeadDuck extends Duck {
  @override
  void display() {
    print("RedHead Duck: Displaying");
  }

  @override
  void fly() {
    print("RedHead Duck: Flying");
  }

  @override
  void quack() {
    print("RedHead Duck: Quacking ");
  }
}

void main() {
  Duck duck = Duck();
  duck.display();
  duck.quack();
  duck.swim();
  duck.fly();

  MallardDuck mallardDuck = MallardDuck();
  mallardDuck.display();
  mallardDuck.fly();
  mallardDuck.quack();
  mallardDuck.swim();

  RedHeadDuck redHeadDuck = RedHeadDuck();
  redHeadDuck.display();
  redHeadDuck.fly();
  redHeadDuck.quack();
  redHeadDuck.swim();
}
