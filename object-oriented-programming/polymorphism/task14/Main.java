package task14;

public class Main {
    public static void main(String[] args) {
        Vehicle car = new Car("CAR001", 4, "Petrol");
        Vehicle bike = new Bike("BIKE001", 150, "Sport");
        Vehicle truck = new Truck("TRUCK001", 5000, 3);

        System.out.println("Car rental cost for 5 days: $" + car.calculateRentalCost(5));
        System.out.println("Bike rental cost for 8 days: $" + bike.calculateRentalCost(8));
        System.out.println("Truck rental cost for 3 days: $" + truck.calculateRentalCost(3));

        System.out.println();
        car.displayDetails();
        System.out.println();
        bike.displayDetails();
        System.out.println();
        truck.displayDetails();
    }
}