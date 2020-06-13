package task3;
class Car {
    String plateNumber;
    String make;
    String model;
    boolean available;
    double rentalRatePerDay;

    Car(String plateNumber, String make, String model, double rentalRatePerDay) {
        this.plateNumber = plateNumber;
        this.make = make;
        this.model = model;
        this.rentalRatePerDay = rentalRatePerDay;
        this.available = true;
    }

    void rent() {
        available = false;
    }

    void returnCar() {
        available = true;
    }

    boolean isAvailable() {
        return available;
    }

    double calculateRentalFee(int days) {
        return rentalRatePerDay * days;
    }

    @Override
    public String toString() {
        return "Car{" +
                "plateNumber='" + plateNumber + '\'' +
                ", make='" + make + '\'' +
                ", model='" + model + '\'' +
                ", available=" + available +
                ", rentalRatePerDay=" + rentalRatePerDay +
                '}';
    }

}

