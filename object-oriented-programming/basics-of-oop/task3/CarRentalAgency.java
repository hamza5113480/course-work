package task3;

class CarRentalAgency {
    Car[] cars;
    int totalCars;

    CarRentalAgency(int capacity) {
        cars = new Car[capacity];
        totalCars = 0;
    }

    void addCar(String plateNumber, String make, String model, double rentalRatePerDay) {
        Car car = new Car(plateNumber, make, model, rentalRatePerDay);
        cars[totalCars++] = car;
        System.out.println("Car added: " + car);
    }

    void rentCar(String plateNumber) {
        for (int i = 0; i < totalCars; i++) {
            if (cars[i].plateNumber.equals(plateNumber) && cars[i].isAvailable()) {
                cars[i].rent();
                System.out.println("Car rented: " + cars[i]);
                return;
            }
        }
        System.out.println("Car not available for rental");
    }

    void returnCar(String plateNumber) {
        for (int i = 0; i < totalCars; i++) {
            if (cars[i].plateNumber.equals(plateNumber) && !cars[i].isAvailable()) {
                cars[i].returnCar();
                System.out.println("Car returned: " + cars[i]);
                return;
            }
        }
        System.out.println("Car not rented or already returned");
    }

    double calculateRentalFee(String plateNumber, int days) {
        for (int i = 0; i < totalCars; i++) {
            if (cars[i].plateNumber.equals(plateNumber)) {
                return cars[i].calculateRentalFee(days);
            }
        }
        System.out.println("Car not found");
        return 0.0;
    }
}
