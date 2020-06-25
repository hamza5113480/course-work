package task6;

class VehicleRegistry {
    Vehicle[] vehicles;
    int count;

    VehicleRegistry(int capacity) {
        vehicles = new Vehicle[capacity];
        count = 0;
    }

    void addVehicle(Vehicle vehicle) {
        if (count < vehicles.length) {
            vehicles[count++] = vehicle;
            System.out.println("Vehicle added to registry.");
        } else {
            System.out.println("Vehicle registry full. Cannot add more vehicles.");
        }
    }

    void listAllVehicles() {
        System.out.println("List of Vehicles:");
        for (int i = 0; i < count; i++) {
            vehicles[i].displayInfo();
            System.out.println(); // Adding an empty line for readability
        }
    }
}
