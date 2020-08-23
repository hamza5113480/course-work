package task15;

class CheckingAccount extends Account {
    private double overdraftLimit;

    public CheckingAccount(String accountNumber, double balance, double overdraftLimit) {
        super(accountNumber, balance);
        this.overdraftLimit = overdraftLimit;
    }

    @Override
    double calculateInterest() {
        // Checking accounts do not earn interest
        return 0;
    }

    @Override
    void displayDetails() {
        System.out.println("Checking Account Details:");
        System.out.println("Account Number: " + accountNumber);
        System.out.println("Balance: $" + balance);
        System.out.println("Overdraft Limit: $" + overdraftLimit);
    }
}