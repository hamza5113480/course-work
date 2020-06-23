package task6;

class Vehicle {
    String vehicleId;
    String brand;
    String model;

    Vehicle(String vehicleId, String brand, String model) {
        this.vehicleId = vehicleId;
        this.brand = brand;
        this.model = model;
    }

    void displayInfo() {
        System.out.println("Vehicle ID: " + vehicleId);
        System.out.println("Brand: " + brand);
        System.out.println("Model: " + model);
    }
}