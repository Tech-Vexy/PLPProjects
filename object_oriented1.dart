import 'dart:io';
// Define an interface with a method signature
abstract class Animal {
  void makeSound();
}

// Create a class that implements the interface
class Dog implements Animal {
  @override
  void makeSound() {
    print('Woof!');
  }
}

// Create a class that inherits from another class
class Poodle extends Dog {
  // Override an inherited method
  @override
  void makeSound() {
    print('Yip!');
  }
}

// Main class to demonstrate the use of a loop and file initialization


class AnimalData {
  List<Animal> animals = [];

  // Method to initialize data from a file
  void loadDataFromFile(String filePath) {
    final file = File(filePath);
    List<String> lines = file.readAsLinesSync();
    for (var line in lines) {
      if (line == 'Dog') {
        animals.add(Dog());
      } else if (line == 'Poodle') {
        animals.add(Poodle());
      }
    }
  }

  // Method that demonstrates the use of a loop
  void makeAllSounds() {
    for (var animal in animals) {
      animal.makeSound();
    }
  }
}

void main() {
  var animalData = AnimalData();
  // Initialize instance with data from a file
  animalData.loadDataFromFile('C:/PLP Projects/animals.txt');
  // Use a loop to go through the animals and make them sound
  animalData.makeAllSounds();
}
