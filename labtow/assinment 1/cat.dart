import 'animal.dart';

class Cat extends Animal {

  String name; 
  int age; 

  Cat(String this.name, int this.age):super (name, age);

  @override
  void makeSound(){
     print(" Cat makeSound is Meow!");
  }
@override
  void display(name,age){
    print("Cat Name: $name, Age:$age");
}
}