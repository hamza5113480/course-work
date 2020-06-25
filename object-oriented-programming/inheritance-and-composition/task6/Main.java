package task6;

public class Main {
    public static void main(String[] args) {
        VehicleRegistry registry = new VehicleRegistry(5);

        Car car = new Car("CAR001", "Toyota", "Camry", 4, "Petrol");
        Bike bike = new Bike("BIKE001", "Honda", "CBR", 600, "Sport");
        Owner owner = new Owner("OWN001", "John Doe", "john@example.com");

        registry.addVehicle(car);
        registry.addVehicle(bike);

        registry.listAllVehicles();

        owner.displayInfo();
    }
}