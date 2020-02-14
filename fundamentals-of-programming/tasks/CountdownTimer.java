package tasks;

import java.util.Scanner;

public class CountdownTimer {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter a number to start countdown: ");
        int number = scanner.nextInt();

        System.out.println("Countdown:");
        for (int i = number; i >= 1; i--) {
            System.out.println(i);
        }

        scanner.close();
    }
}
