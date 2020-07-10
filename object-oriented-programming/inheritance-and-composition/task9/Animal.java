package task9;

class Animal {
    String species;
    String habitat;
    String sound;

    Animal(String species, String habitat, String sound) {
        this.species = species;
        this.habitat = habitat;
        this.sound = sound;
    }

    void makeSound() {
        System.out.println(species + " makes a sound: " + sound);
    }

    void displayInfo() {
        System.out.println("Species: " + species);
        System.out.println("Habitat: " + habitat);
        System.out.println("Sound: " + sound);
    }
}