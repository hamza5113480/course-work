package task13;

class CommissionedEmployee extends Employee {
    private double salesAmount;
    private double commissionRate;

    public CommissionedEmployee(String name, String employeeId, double salesAmount, double commissionRate) {
        super(name, employeeId);
        this.salesAmount = salesAmount;
        this.commissionRate = commissionRate;
    }

    @Override
    double calculatePay() {
        return salesAmount * commissionRate;
    }
}