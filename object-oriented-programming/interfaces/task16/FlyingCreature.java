package task16;

interface FlyingCreature {
    default void move() {
        System.out.println("Flying creature is flying");
    }
}