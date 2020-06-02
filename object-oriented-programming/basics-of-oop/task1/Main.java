package task1;
public class Main {
    public static void main(String[] args) {
        Bank bank = new Bank(5);

        // Creating accounts
        bank.addAccount("123456");
        bank.addAccount("654321");

        // Depositing and withdrawing
        BankAccount account1 = bank.getAccount("123456");
        if (account1 != null) {
            account1.deposit(1000);
            account1.withdraw(200);
            System.out.println("Balance for account 123456: $" + account1.getBalance());
        }

        // Depositing and withdrawing from another account
        BankAccount account2 = bank.getAccount("654321");
        if (account2 != null) {
            account2.deposit(500);
            account2.withdraw(100);
            System.out.println("Balance for account 654321: $" + account2.getBalance());
        }
    }
}
