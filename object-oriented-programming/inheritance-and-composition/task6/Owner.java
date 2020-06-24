package task6;

class Owner {
    String ownerId;
    String name;
    String contactInfo;

    Owner(String ownerId, String name, String contactInfo) {
        this.ownerId = ownerId;
        this.name = name;
        this.contactInfo = contactInfo;
    }

    void displayInfo() {
        System.out.println("Owner ID: " + ownerId);
        System.out.println("Name: " + name);
        System.out.println("Contact Information: " + contactInfo);
    }
}