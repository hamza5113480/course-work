package task2;

public class Main {
    public static void main(String[] args) {
        StudentManagementSystem sms = new StudentManagementSystem();

        // Adding students
        sms.addStudent("1001", "Alice", 20, "Computer Science");
        sms.addStudent("1002", "Bob", 22, "Electrical Engineering");

        // Searching for a student
        sms.searchStudent("1001");
        sms.searchStudent("1003"); // Not found

        // Updating a student
        sms.updateStudent("1002", "Charlie", 21, "Mechanical Engineering");
        sms.searchStudent("1002"); // Updated information
    }
}