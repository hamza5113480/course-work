package task10;

class Bank {
    private static final int MAX_CUSTOMERS = 100;
    private BankCustomer[] customers;
    private int customerCount;

    public Bank() {
        customers = new BankCustomer[MAX_CUSTOMERS];
        customerCount = 0;
    }

    public void addCustomer(String customerId, String customerName, String email, double balance) {
        if (customerCount < MAX_CUSTOMERS) {
            BankCustomer customer = new BankCustomer(customerId, customerName, email, balance);
            customers[customerCount++] = customer;
            System.out.println("Customer added successfully.");
        } else {
            System.out.println("Customer limit reached. Cannot add more customers.");
        }
    }

    public void removeCustomer(String customerId) {
        for (int i = 0; i < customerCount; i++) {
            if (customers[i].getCustomerId().equals(customerId)) {
                for (int j = i; j < customerCount - 1; j++) {
                    customers[j] = customers[j + 1];
                }
                customers[--customerCount] = null;
                System.out.println("Customer removed successfully.");
                return;
            }
        }
        System.out.println("Customer not found.");
    }

    public void deposit(String customerId, double amount) {
        BankCustomer customer = findCustomer(customerId);
        if (customer != null) {
            customer.deposit(amount);
        } else {
            System.out.println("Customer not found.");
        }
    }

    public void withdraw(String customerId, double amount) {
        BankCustomer customer = findCustomer(customerId);
        if (customer != null) {
            customer.withdraw(amount);
        } else {
            System.out.println("Customer not found.");
        }
    }

    private BankCustomer findCustomer(String customerId) {
        for (int i = 0; i < customerCount; i++) {
            if (customers[i].getCustomerId().equals(customerId)) {
                return customers[i];
            }
        }
        return null;
    }
}