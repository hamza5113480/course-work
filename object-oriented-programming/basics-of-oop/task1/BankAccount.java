package task1;
class BankAccount {
    String accountNumber;
    double balance;

    BankAccount(String accountNumber) {
        this.accountNumber = accountNumber;
        this.balance = 0;
    }

    String getAccountNumber() {
        return accountNumber;
    }

    double getBalance() {
        return balance;
    }

    void deposit(double amount) {
        balance += amount;
        System.out.println("Deposited: $" + amount);
    }

    void withdraw(double amount) {
        if (balance >= amount) {
            balance -= amount;
            System.out.println("Withdrawn: $" + amount);
        } else {
            System.out.println("Insufficient balance");
        }
    }
}