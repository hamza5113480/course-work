package task12;

class Cat extends Animal {
    @Override
    void makeSound() {
        System.out.println("Cat meows!");
    }

    @Override
    void move() {
        System.out.println("Cat walks gracefully.");
    }
}