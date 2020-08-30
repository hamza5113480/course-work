package task16;

interface Animal {
    default void move() {
        System.out.println("Animal is moving");
    }
}