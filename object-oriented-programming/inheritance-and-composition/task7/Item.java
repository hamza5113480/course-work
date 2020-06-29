package task7;

class Item {
    String itemId;
    String title;
    boolean available;

    Item(String itemId, String title) {
        this.itemId = itemId;
        this.title = title;
        this.available = true;
    }

    void displayInfo() {
        System.out.println("Item ID: " + itemId);
        System.out.println("Title: " + title);
        System.out.println("Availability: " + (available ? "Available" : "Not Available"));
    }
}