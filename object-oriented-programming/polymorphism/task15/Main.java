package task15;

public class Main {
    public static void main(String[] args) {
        Account savingsAccount = new SavingsAccount("SAV001", 5000, 0.05);
        Account checkingAccount = new CheckingAccount("CHK001", 3000, 500);

        System.out.println("Interest earned for savings account: $" + savingsAccount.calculateInterest());
        System.out.println();
        savingsAccount.displayDetails();
        System.out.println();
        System.out.println("Interest earned for checking account: $" + checkingAccount.calculateInterest());
        System.out.println();
        checkingAccount.displayDetails();
    }
}