import 'animal.dart';

class Dog extends Animal{
  String name; 
  int age; 

  Dog(String this.name, int this.age, ):super (name, age);

@override
  void makeSound(){
     print(" Dog makeSound is Woof!");
  }
@override
  void display(name,age){
    print("Dog Name: $name, Age:$age");
}
}