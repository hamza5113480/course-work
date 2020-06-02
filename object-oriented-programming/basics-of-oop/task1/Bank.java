package task1;
class Bank {
    BankAccount[] accounts;
    int count;

    Bank(int capacity) {
        accounts = new BankAccount[capacity];
        count = 0;
    }

    void addAccount(String accountNumber) {
        if (count < accounts.length) {
            accounts[count++] = new BankAccount(accountNumber);
            System.out.println("Account created successfully: " + accountNumber);
        } else {
            System.out.println("Cannot create more accounts. Bank full.");
        }
    }

    BankAccount getAccount(String accountNumber) {
        for (int i = 0; i < count; i++) {
            if (accounts[i].getAccountNumber().equals(accountNumber)) {
                return accounts[i];
            }
        }
        System.out.println("Account not found");
        return null;
    }
}