package task16;

class Bird implements Animal, FlyingCreature {
    // Resolving the diamond problem by providing a custom implementation for move()
    @Override
    public void move() {
        System.out.println("Bird is flying");
    }
}