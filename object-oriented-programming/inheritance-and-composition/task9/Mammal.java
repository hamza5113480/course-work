package task9;

class Mammal extends Animal {
    int numberOfLegs;
    boolean domesticated;

    Mammal(String species, String habitat, String sound, int numberOfLegs, boolean domesticated) {
        super(species, habitat, sound);
        this.numberOfLegs = numberOfLegs;
        this.domesticated = domesticated;
    }

    @Override
    void displayInfo() {
        super.displayInfo();
        System.out.println("Number of Legs: " + numberOfLegs);
        System.out.println("Domesticated: " + (domesticated ? "Yes" : "No"));
    }
}