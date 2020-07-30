package task12;

class Dog extends Animal {
    @Override
    void makeSound() {
        System.out.println("Dog barks!");
    }

    @Override
    void move() {
        System.out.println("Dog runs on four legs.");
    }
}