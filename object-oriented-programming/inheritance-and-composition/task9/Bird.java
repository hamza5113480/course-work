package task9;

class Bird extends Animal {
    double wingspan;
    boolean migratory;

    Bird(String species, String habitat, String sound, double wingspan, boolean migratory) {
        super(species, habitat, sound);
        this.wingspan = wingspan;
        this.migratory = migratory;
    }

    @Override
    void displayInfo() {
        super.displayInfo();
        System.out.println("Wingspan: " + wingspan + " meters");
        System.out.println("Migratory: " + (migratory ? "Yes" : "No"));
    }
}