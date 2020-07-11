package task9;

public class Main {
    public static void main(String[] args) {
        Zoo zoo = new Zoo(5);

        Mammal lion = new Mammal("Lion", "Grassland", "Roar", 4, false);
        Bird eagle = new Bird("Eagle", "Mountains", "Screech", 2.5, true);
        Fish shark = new Fish("Great White Shark", "Ocean", "Chomp", "Saltwater", 1000);

        zoo.addAnimal(lion);
        zoo.addAnimal(eagle);
        zoo.addAnimal(shark);

        zoo.displayAllAnimals();
    }
}