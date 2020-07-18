package task10;

public class Main {
    public static void main(String[] args) {
        Bank bank = new Bank();

        // Adding customers
        bank.addCustomer("1001", "John Doe", "john@example.com", 1000);
        bank.addCustomer("1002", "Alice Smith", "alice@example.com", 500);

        // Depositing and withdrawing
        bank.deposit("1001", 500);
        bank.withdraw("1002", 200);

        // Removing a customer
        bank.removeCustomer("1002");
    }
}