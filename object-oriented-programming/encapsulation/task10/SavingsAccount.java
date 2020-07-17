package task10;

class SavingsAccount extends Account {
    private double interestRate;
    private double minimumBalance;

    public SavingsAccount(String accountNumber, double balance, String accountHolderName, double interestRate, double minimumBalance) {
        super(accountNumber, balance, accountHolderName);
        this.interestRate = interestRate;
        this.minimumBalance = minimumBalance;
    }

    public double getInterestRate() {
        return interestRate;
    }

    public double getMinimumBalance() {
        return minimumBalance;
    }

    public void calculateInterest() {
        double interest = getBalance() * (interestRate / 100);
        deposit(interest);
        System.out.println("Interest calculated and deposited: " + interest);
    }
}