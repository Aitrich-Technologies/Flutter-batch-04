void main() {
  // Define a list of your favorite animal
  List<String> favoriteAnimals = ['Cat', 'Dog', 'Lion', 'Tiger'];

  // Print the list
  print('My favorite Animals: $favoriteAnimals');

  // Add a new animal to the list
    favoriteAnimals.add('Cheetah');
  print('After adding Cheetah: $favoriteAnimals');

  // Remove an animal from the list
  favoriteAnimals.remove('Dog');
  print('After removing Dog: $favoriteAnimals');

  // Check if the list contains a specific animal

  favoriteAnimals.contains('Cat');
  print('Does the list contain cat ?  ${favoriteAnimals.isNotEmpty}');
  
}