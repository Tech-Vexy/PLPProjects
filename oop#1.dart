// Define an interface with a method signature
abstract class Animal {
  void makeSound();
}

// Define a class that implements the interface
class Dog implements Animal {
  void makeSound() => print('Woof!');
}

// Define a base class
class Pet {
  String name;

  Pet(this.name);

  void showAffection() => print('$name shows affection.');
}

// Define a class that inherits from Pet and overrides a method
class Cat extends Pet {
  Cat(String name) : super(name);

  @override
  void showAffection() => print('$name purrs.');
}

// Main program
void main() {
  // Create an instance of Cat initialized with data from a file
  // For simplicity, we'll simulate file data with a string
  String fileData = 'Whiskers';
  Cat myCat = Cat(fileData);

  // Demonstrate the use of a loop
  for (int i = 0; i < 3; i++) {
    myCat.showAffection();
  }

  // Create an instance of Dog and demonstrate interface implementation
  Dog myDog = Dog();
  myDog.makeSound();
}
