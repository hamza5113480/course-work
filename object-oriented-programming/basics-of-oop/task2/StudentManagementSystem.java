package task2;

import java.util.ArrayList;
import java.util.List;

class StudentManagementSystem {
    List<Student> students;

    StudentManagementSystem() {
        this.students = new ArrayList<>();
    }

    void addStudent(String id, String name, int age, String course) {
        Student student = new Student(id, name, age, course);
        students.add(student);
        System.out.println("Student added: " + student);
    }

    void updateStudent(String id, String name, int age, String course) {
        for (Student student : students) {
            if (student.getId().equals(id)) {
                student.setName(name);
                student.setAge(age);
                student.setCourse(course);
                System.out.println("Student updated: " + student);
                return;
            }
        }
        System.out.println("Student not found");
    }

    void searchStudent(String id) {
        for (Student student : students) {
            if (student.getId().equals(id)) {
                System.out.println("Student found: " + student);
                return;
            }
        }
        System.out.println("Student not found");
    }
}