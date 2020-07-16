## Encapsulation
This section contains Java programs that serve as exercises to learn Encapsulation and Access Modifiers in OOP.

## Tasks
10. Banking System
    Develop a banking system with the following components:
 - Account: Class representing a bank account with attributes like account number, balance, and account holder name. Use encapsulation to protect account attributes and provide public methods for depositing, withdrawing, and checking balance. Use private access modifier for attributes like account number and balance to prevent direct modification.
 - SavingsAccount: Subclass of Account representing a savings account with additional attributes like interest rate and minimum balance. Use encapsulation to protect additional attributes specific to savings accounts and provide public methods for setting and retrieving them. Use protected access modifier for attributes like interest rate to allow subclasses to access them.
 - Bank: Class representing the bank system with methods to manage accounts, such as creating new accounts, closing accounts, and transferring funds. Use encapsulation to ensure that account details are private and can only be accessed or modified through methods like createAccount, closeAccount, and transferFunds. Use public access modifier for methods that need to be accessible from outside the class, such as createAccount and transferFunds.