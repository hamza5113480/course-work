package task8;

public class Main {
    public static void main(String[] args) {
        School school = new School();

        Student student1 = new Student("S001", "John Doe", 15, 10, 85.5, "Class 10A");
        Student student2 = new Student("S002", "Alice Smith", 16, 11, 90.0, "Class 11B");
        Teacher teacher1 = new Teacher("T001", "Mr. Johnson", 35, "Mathematics", 10);
        Teacher teacher2 = new Teacher("T002", "Ms. Davis", 40, "Science", 15);

        school.addStudent(student1);
        school.addStudent(student2);
        school.addTeacher(teacher1);
        school.addTeacher(teacher2);

        school.displayAllStudents();
        school.displayAllTeachers();

        Classroom class10A = new Classroom("C001", "Class 10A");
        class10A.addStudent("John Doe");
        class10A.addStudent("Alice Smith");
        class10A.displayClassInfo();
    }
}