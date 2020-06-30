package task7;

class Library {
    Item[] items;
    int count;

    Library(int capacity) {
        items = new Item[capacity];
        count = 0;
    }

    void addItem(Item item) {
        if (count < items.length) {
            items[count++] = item;
            System.out.println("Item added to library.");
        } else {
            System.out.println("Library is full. Cannot add more items.");
        }
    }

    void displayAllItems() {
        System.out.println("List of Items in the Library:");
        for (int i = 0; i < count; i++) {
            items[i].displayInfo();
            System.out.println(); // Adding an empty line for readability
        }
    }

    Item searchItemByTitle(String title) {
        for (int i = 0; i < count; i++) {
            if (items[i].title.equalsIgnoreCase(title)) {
                return items[i];
            }
        }
        System.out.println("Item with title '" + title + "' not found.");
        return null;
    }

    Item searchItemByAuthor(String author) {
        for (int i = 0; i < count; i++) {
            if (items[i] instanceof Book && ((Book) items[i]).author.equalsIgnoreCase(author)) {
                return items[i];
            }
        }
        System.out.println("No book found with author '" + author + "'.");
        return null;
    }
}
