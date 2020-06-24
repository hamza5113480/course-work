package task6;

class Bike extends Vehicle {
    int engineCapacity;
    String bikeType;

    Bike(String vehicleId, String brand, String model, int engineCapacity, String bikeType) {
        super(vehicleId, brand, model);
        this.engineCapacity = engineCapacity;
        this.bikeType = bikeType;
    }

    @Override
    void displayInfo() {
        super.displayInfo();
        System.out.println("Engine Capacity: " + engineCapacity + "cc");
        System.out.println("Bike Type: " + bikeType);
    }
}