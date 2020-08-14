package task14;

class Bike extends Vehicle {
    private int engineCapacity;
    private String bikeType;

    public Bike(String vehicleId, int engineCapacity, String bikeType) {
        super(vehicleId);
        this.engineCapacity = engineCapacity;
        this.bikeType = bikeType;
    }

    @Override
    double calculateRentalCost(int days) {
        double baseCost = 20 * days; // Base rental cost for a bike
        // Apply discount based on the total rental cost
        if (baseCost > 100) {
            return baseCost - 10; // $10 discount for rentals costing more than $100
        } else {
            return baseCost;
        }
    }

    @Override
    void displayDetails() {
        System.out.println("Bike details:");
        System.out.println("Vehicle ID: " + vehicleId);
        System.out.println("Engine Capacity: " + engineCapacity);
        System.out.println("Bike Type: " + bikeType);
    }
}
