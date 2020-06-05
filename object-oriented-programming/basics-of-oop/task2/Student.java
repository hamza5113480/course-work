package task2;

class Student {
    String id;
    String name;
    int age;
    String course;

    Student(String id, String name, int age, String course) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.course = course;
    }

    String getId() {
        return id;
    }

    String getName() {
        return name;
    }

    int getAge() {
        return age;
    }

    String getCourse() {
        return course;
    }

    void setName(String name) {
        this.name = name;
    }

    void setAge(int age) {
        this.age = age;
    }

    void setCourse(String course) {
        this.course = course;
    }
}