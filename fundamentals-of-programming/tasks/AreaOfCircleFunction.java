package tasks;

import java.util.Scanner;

public class AreaOfCircleFunction {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the radius of the circle: ");
        double radius = scanner.nextDouble();

        System.out.println("Area of the circle: " + calculateArea(radius));

        scanner.close();
    }

    public static double calculateArea(double radius) {
        return Math.PI * radius * radius;
    }
}
