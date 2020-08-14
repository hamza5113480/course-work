package task14;

class Truck extends Vehicle {
    private double loadCapacity;
    private int numberOfAxles;

    public Truck(String vehicleId, double loadCapacity, int numberOfAxles) {
        super(vehicleId);
        this.loadCapacity = loadCapacity;
        this.numberOfAxles = numberOfAxles;
    }

    @Override
    double calculateRentalCost(int days) {
        return 100 * days; // Base rental cost for a truck, no discount applied
    }

    @Override
    void displayDetails() {
        System.out.println("Truck details:");
        System.out.println("Vehicle ID: " + vehicleId);
        System.out.println("Load Capacity: " + loadCapacity);
        System.out.println("Number of Axles: " + numberOfAxles);
    }
}
