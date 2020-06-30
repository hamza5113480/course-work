package task7;

public class Main {
    public static void main(String[] args) {
        Library library = new Library(5);

        Book book = new Book("B001", "Java Programming", "John Doe", "Programming", 400);
        DVD dvd = new DVD("D001", "The Matrix", "Wachowski Brothers", "Sci-Fi", 136);

        library.addItem(book);
        library.addItem(dvd);

        library.displayAllItems();

        Item foundItem = library.searchItemByTitle("Java Programming");
        if (foundItem != null) {
            System.out.println("Found item by title:");
            foundItem.displayInfo();
        }

        foundItem = library.searchItemByAuthor("John Doe");
        if (foundItem != null) {
            System.out.println("Found item by author:");
            foundItem.displayInfo();
        }

        Member member = new Member("M001", "Alice Smith", "alice@example.com");
        member.displayInfo();
    }
}