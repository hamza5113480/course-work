package tasks;

import java.util.Scanner;

public class GradeCalculator {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter marks for Maths: ");
        int maths = scanner.nextInt();

        System.out.print("Enter marks for Science: ");
        int science = scanner.nextInt();

        System.out.print("Enter marks for English: ");
        int english = scanner.nextInt();

        double average = (maths + science + english) / 3.0;

        char grade;
        if (average >= 90) {
            grade = 'A';
        } else if (average >= 80) {
            grade = 'B';
        } else if (average >= 70) {
            grade = 'C';
        } else if (average >= 60) {
            grade = 'D';
        } else {
            grade = 'F';
        }

        System.out.println("Average marks: " + average);
        System.out.println("Grade: " + grade);

        scanner.close();
    }
}
