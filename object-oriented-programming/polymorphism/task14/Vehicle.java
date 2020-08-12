package task14;

abstract class Vehicle {
    protected String vehicleId;

    public Vehicle(String vehicleId) {
        this.vehicleId = vehicleId;
    }

    abstract double calculateRentalCost(int days);

    abstract void displayDetails();
}