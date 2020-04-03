package tasks;

import java.util.Scanner;

public class PowerFunction {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the base: ");
        double base = scanner.nextDouble();

        System.out.print("Enter the exponent: ");
        int exponent = scanner.nextInt();

        System.out.println(base + " raised to the power of " + exponent + " is: " + power(base, exponent));

        scanner.close();
    }

    public static double power(double base, int exponent) {
        if (exponent == 0) {
            return 1;
        }
        double result = 1;
        for (int i = 1; i <= Math.abs(exponent); i++) {
            result *= base;
        }
        return (exponent > 0) ? result : 1 / result;
    }
}
