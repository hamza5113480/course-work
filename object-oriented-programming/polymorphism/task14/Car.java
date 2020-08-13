package task14;

class Car extends Vehicle {
    private int numberOfDoors;
    private String fuelType;

    public Car(String vehicleId, int numberOfDoors, String fuelType) {
        super(vehicleId);
        this.numberOfDoors = numberOfDoors;
        this.fuelType = fuelType;
    }

    @Override
    double calculateRentalCost(int days) {
        double baseCost = 50 * days; // Base rental cost for a car
        // Apply discount based on the number of days rented
        if (days > 7) {
            return baseCost - 20; // $20 discount for rentals longer than 7 days
        } else {
            return baseCost;
        }
    }

    @Override
    void displayDetails() {
        System.out.println("Car details:");
        System.out.println("Vehicle ID: " + vehicleId);
        System.out.println("Number of Doors: " + numberOfDoors);
        System.out.println("Fuel Type: " + fuelType);
    }
}
