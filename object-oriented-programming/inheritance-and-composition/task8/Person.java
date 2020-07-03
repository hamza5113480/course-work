package task8;

class Person {
    String personId;
    String name;
    int age;

    Person(String personId, String name, int age) {
        this.personId = personId;
        this.name = name;
        this.age = age;
    }

    void displayInfo() {
        System.out.println("Person ID: " + personId);
        System.out.println("Name: " + name);
        System.out.println("Age: " + age);
    }
}