/*
Assignment 10: Super Keyword
Create a class named Animal with properties name (String) and sound (String).
Add a method makeSound() that prints the sound of the animal.
Create a subclass Dog that inherits from Animal and overrides the makeSound() method to include additional behavior (e.g., "Woof! I am a dog.").
Use the super keyword to call the makeSound() method of the parent class in the Dog class.
Create an object of the Dog class and call the makeSound() method.
 */
//Parent class
class Animal {
  String name;
  String sound;

  // Constructor
  Animal(this.name, this.sound);

  // Method to make sound
  void makeSound() {
    print("$name makes a sound: $sound");
  }
}

// Subclass Dog inherits from Animal
class Dog extends Animal {
  // Constructor calls the parent constructor
  Dog(String name) : super(name, "Woof!");

  // Overriding the makeSound method
  @override
  void makeSound() {
    super.makeSound(); // Calls the parent class method
    print("Woof! I am a dog.");
  }
}

void main() {
  // Creating an object of Dog class
  Dog myDog = Dog("Buddy");

  // Calling the makeSound method
  myDog.makeSound();
}
