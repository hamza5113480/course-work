package task15;

class SavingsAccount extends Account {
    private double interestRate;

    public SavingsAccount(String accountNumber, double balance, double interestRate) {
        super(accountNumber, balance);
        this.interestRate = interestRate;
    }

    @Override
    double calculateInterest() {
        // Calculate interest using compound interest formula
        return balance * (Math.pow((1 + interestRate), 12) - 1);
    }

    @Override
    void displayDetails() {
        System.out.println("Savings Account Details:");
        System.out.println("Account Number: " + accountNumber);
        System.out.println("Balance: $" + balance);
        System.out.println("Interest Rate: " + interestRate * 100 + "%");
    }
}