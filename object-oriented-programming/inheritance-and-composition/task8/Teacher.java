package task8;
class Teacher extends Person {
    String subjectTaught;
    int yearsOfExperience;
    String[] classesAssigned;
    int classCount;

    Teacher(String personId, String name, int age, String subjectTaught, int yearsOfExperience) {
        super(personId, name, age);
        this.subjectTaught = subjectTaught;
        this.yearsOfExperience = yearsOfExperience;
        this.classesAssigned = new String[5]; // Maximum 5 classes
        this.classCount = 0;
    }

    void assignClass(String className) {
        if (classCount < 5) {
            classesAssigned[classCount++] = className;
        } else {
            System.out.println("Maximum classes assigned already.");
        }
    }

    @Override
    void displayInfo() {
        super.displayInfo();
        System.out.println("Subject Taught: " + subjectTaught);
        System.out.println("Years of Experience: " + yearsOfExperience);
        System.out.println("Classes Assigned:");
        for (int i = 0; i < classCount; i++) {
            System.out.println(classesAssigned[i]);
        }
    }
}
