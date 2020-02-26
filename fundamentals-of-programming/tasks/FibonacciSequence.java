package tasks;

import java.util.Scanner;

public class FibonacciSequence {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the length of the Fibonacci sequence: ");
        int length = scanner.nextInt();

        int prev = 0;
        int current = 1;

        System.out.println("Fibonacci sequence:");
        for (int i = 1; i <= length; i++) {
            System.out.print(prev + " ");
            int next = prev + current;
            prev = current;
            current = next;
        }

        scanner.close();
    }
}

