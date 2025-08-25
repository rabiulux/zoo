// Abstract class Animal
abstract class Animal {
  // Private field (encapsulation)
  String _name;

  // Constructor
  Animal(this._name);

  // Abstract method
  void makeSound();

  // Concrete method
  String getName() {
    return _name;
  }
}

// Lion class
class Lion extends Animal {
  double maneSize; // Specific property

  Lion(String name, this.maneSize) : super(name);

  @override
  void makeSound() {
    print("${getName()} roars: Roarrr!");
  }
}

// Elephant class
class Elephant extends Animal {
  double trunkLength; // Specific property

  Elephant(String name, this.trunkLength) : super(name);

  @override
  void makeSound() {
    print("${getName()} trumpets: Pawooo!");
  }
}

// Parrot class
class Parrot extends Animal {
  int vocabularySize; // Specific property

  Parrot(String name, this.vocabularySize) : super(name);

  @override
  void makeSound() {
    print("${getName()} squawks: Hello! Squawk!");
  }
}

void main() {
  // Create a list of Animal objects
  List<Animal> zoo = [];

  // Add instances of animals
  zoo.add(Lion("Simba", 25.0));
  zoo.add(Elephant("Dumbo", 1.8));
  zoo.add(Parrot("Polly", 120));

  // Loop through the list and print details
  for (var animal in zoo) {
    print("Animal Name: ${animal.getName()}");

    if (animal is Lion) {
      print("Mane Size: ${animal.maneSize} cm");
    } else if (animal is Elephant) {
      print("Trunk Length: ${animal.trunkLength} meters");
    } else if (animal is Parrot) {
      print("Vocabulary Size: ${animal.vocabularySize} words");
    }

    // Call makeSound
    animal.makeSound();
    print("--------------------------");
  }
}
