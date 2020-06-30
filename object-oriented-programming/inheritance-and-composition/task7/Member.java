package task7;

class Member {
    String memberId;
    String name;
    String contactInfo;

    Member(String memberId, String name, String contactInfo) {
        this.memberId = memberId;
        this.name = name;
        this.contactInfo = contactInfo;
    }

    void displayInfo() {
        System.out.println("Member ID: " + memberId);
        System.out.println("Name: " + name);
        System.out.println("Contact Information: " + contactInfo);
    }
}