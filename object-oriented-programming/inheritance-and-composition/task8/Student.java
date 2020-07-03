package task8;

class Student extends Person {
    int grade;
    double averageScore;
    String className;

    Student(String personId, String name, int age, int grade, double averageScore, String className) {
        super(personId, name, age);
        this.grade = grade;
        this.averageScore = averageScore;
        this.className = className;
    }

    @Override
    void displayInfo() {
        super.displayInfo();
        System.out.println("Grade: " + grade);
        System.out.println("Average Score: " + averageScore);
        System.out.println("Class: " + className);
    }
}