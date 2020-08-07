package task13;

class SalariedEmployee extends Employee {
    private double monthlySalary;

    public SalariedEmployee(String name, String employeeId, double monthlySalary) {
        super(name, employeeId);
        this.monthlySalary = monthlySalary;
    }

    @Override
    double calculatePay() {
        return monthlySalary;
    }
}