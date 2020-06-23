package task6;

class Car extends Vehicle {
    int numberOfDoors;
    String fuelType;

    Car(String vehicleId, String brand, String model, int numberOfDoors, String fuelType) {
        super(vehicleId, brand, model);
        this.numberOfDoors = numberOfDoors;
        this.fuelType = fuelType;
    }

    @Override
    void displayInfo() {
        super.displayInfo();
        System.out.println("Number of Doors: " + numberOfDoors);
        System.out.println("Fuel Type: " + fuelType);
    }
}