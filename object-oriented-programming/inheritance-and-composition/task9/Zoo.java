package task9;

class Zoo {
    Animal[] animals;
    int count;

    Zoo(int capacity) {
        animals = new Animal[capacity];
        count = 0;
    }

    void addAnimal(Animal animal) {
        if (count < animals.length) {
            animals[count++] = animal;
            System.out.println("Animal added to zoo.");
        } else {
            System.out.println("Zoo is full. Cannot add more animals.");
        }
    }

    void displayAllAnimals() {
        System.out.println("List of Animals in the Zoo:");
        for (int i = 0; i < count; i++) {
            animals[i].displayInfo();
            System.out.println(); // Adding an empty line for readability
        }
    }
}