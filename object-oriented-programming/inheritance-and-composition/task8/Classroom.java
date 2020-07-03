package task8;

class Classroom {
    String classId;
    String className;
    String[] studentsEnrolled;
    int studentCount;

    Classroom(String classId, String className) {
        this.classId = classId;
        this.className = className;
        this.studentsEnrolled = new String[30]; // Maximum 30 students
        this.studentCount = 0;
    }

    void addStudent(String studentName) {
        if (studentCount < 30) {
            studentsEnrolled[studentCount++] = studentName;
        } else {
            System.out.println("Classroom is full. Cannot add more students.");
        }
    }

    void displayClassInfo() {
        System.out.println("Class ID: " + classId);
        System.out.println("Class Name: " + className);
        System.out.println("Students Enrolled:");
        for (int i = 0; i < studentCount; i++) {
            System.out.println(studentsEnrolled[i]);
        }
    }
}
