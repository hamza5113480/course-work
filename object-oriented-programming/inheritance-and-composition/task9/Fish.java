package task9;

class Fish extends Animal {
    String waterType;
    int maxDepth;

    Fish(String species, String habitat, String sound, String waterType, int maxDepth) {
        super(species, habitat, sound);
        this.waterType = waterType;
        this.maxDepth = maxDepth;
    }

    @Override
    void displayInfo() {
        super.displayInfo();
        System.out.println("Water Type: " + waterType);
        System.out.println("Maximum Depth: " + maxDepth + " meters");
    }
}