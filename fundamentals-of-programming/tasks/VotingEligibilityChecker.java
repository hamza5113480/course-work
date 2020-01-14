package tasks;

import java.util.Scanner;

public class VotingEligibilityChecker {
    public static void main(String[] args) {
        // Create a Scanner object for user input
        Scanner scanner = new Scanner(System.in);

        // Prompt the user to enter their age
        System.out.print("Enter your age: ");
        int age = scanner.nextInt();

        // Close the scanner to prevent resource leak
        scanner.close();

        // Check if the user's age meets the eligibility criteria
        if (age >= 18) {
            System.out.println("You are eligible to vote.");
        } else {
            System.out.println("You are not eligible to vote yet.");
        }
    }
}
