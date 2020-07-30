package task12;

class Bird extends Animal {
    @Override
    void makeSound() {
        System.out.println("Bird chirps!");
    }

    @Override
    void move() {
        System.out.println("Bird flies.");
    }
}