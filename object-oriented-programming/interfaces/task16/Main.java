package task16;

public class Main {
    public static void main(String[] args) {
        Animal bird = new Bird();
        bird.move(); // Expected output: Bird is flying

        Animal lion = new Lion();
        lion.move(); // Expected output: Lion is walking
    }
}