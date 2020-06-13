package task3;

public class Main {
    public static void main(String[] args) {
        CarRentalAgency agency = new CarRentalAgency(10);

        // Adding cars
        agency.addCar("ABC123", "Toyota", "Corolla", 50.0);
        agency.addCar("XYZ456", "Honda", "Civic", 60.0);

        // Renting a car
        agency.rentCar("ABC123");

        // Trying to rent an already rented car
        agency.rentCar("ABC123");

        // Returning a car
        agency.returnCar("ABC123");

        // Calculating rental fee
        double rentalFee = agency.calculateRentalFee("XYZ456", 5);
        System.out.println("Rental fee: $" + rentalFee);
    }
}