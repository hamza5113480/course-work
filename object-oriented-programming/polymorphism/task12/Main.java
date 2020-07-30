package task12;

public class Main {
    public static void main(String[] args) {
        Animal[] animals = {new Dog(), new Cat(), new Bird()};

        for (Animal animal : animals) {
            animal.makeSound();
            animal.move();
            System.out.println();
        }
    }
}