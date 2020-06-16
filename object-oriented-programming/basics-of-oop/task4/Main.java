package task4;

public class Main {
    public static void main(String[] args) {
        LibraryCatalog catalog = new LibraryCatalog(5);

        // Adding books to the catalog
        catalog.addBook("The Great Gatsby", "F. Scott Fitzgerald");
        catalog.addBook("To Kill a Mockingbird", "Harper Lee");

        // Borrowing and returning books
        catalog.borrowBook("The Great Gatsby");
        catalog.borrowBook("The Great Gatsby"); // Attempting to borrow the same book again
        catalog.returnBook("To Kill a Mockingbird");
        catalog.returnBook("To Kill a Mockingbird"); // Attempting to return the same book again
    }
}