package task13;

public class Main {
    public static void main(String[] args) {
        Employee[] employees = {
                new SalariedEmployee("John Doe", "001", 5000),
                new HourlyEmployee("Jane Smith", "002", 20, 40),
                new CommissionedEmployee("Bob Johnson", "003", 10000, 0.1)
        };

        for (Employee employee : employees) {
            employee.displayDetails();
            System.out.println();
        }
    }
}