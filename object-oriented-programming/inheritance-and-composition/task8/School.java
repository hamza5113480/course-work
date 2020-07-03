package task8;

class School {
    Student[] students;
    Teacher[] teachers;
    int studentCount;
    int teacherCount;

    School() {
        students = new Student[100]; // Maximum 100 students
        teachers = new Teacher[20]; // Maximum 20 teachers
        studentCount = 0;
        teacherCount = 0;
    }

    void addStudent(Student student) {
        if (studentCount < 100) {
            students[studentCount++] = student;
            System.out.println("Student added to school.");
        } else {
            System.out.println("School is full. Cannot add more students.");
        }
    }

    void addTeacher(Teacher teacher) {
        if (teacherCount < 20) {
            teachers[teacherCount++] = teacher;
            System.out.println("Teacher added to school.");
        } else {
            System.out.println("School is full. Cannot add more teachers.");
        }
    }

    void displayAllStudents() {
        System.out.println("List of Students:");
        for (int i = 0; i < studentCount; i++) {
            students[i].displayInfo();
            System.out.println(); // Adding an empty line for readability
        }
    }

    void displayAllTeachers() {
        System.out.println("List of Teachers:");
        for (int i = 0; i < teacherCount; i++) {
            teachers[i].displayInfo();
            System.out.println(); // Adding an empty line for readability
        }
    }
}
