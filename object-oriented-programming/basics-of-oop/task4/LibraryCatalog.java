package task4;

class LibraryCatalog {
    Book[] books;
    int count;

    LibraryCatalog(int capacity) {
        books = new Book[capacity];
        count = 0;
    }

    void addBook(String title, String author) {
        if (count < books.length) {
            books[count++] = new Book(title, author);
            System.out.println("Book '" + title + "' by " + author + " has been added to the catalog.");
        } else {
            System.out.println("The catalog is full. Cannot add more books.");
        }
    }

    void borrowBook(String title) {
        for (Book book : books) {
            if (book != null && book.title.equals(title)) {
                book.borrow();
                return;
            }
        }
        System.out.println("Book '" + title + "' not found in the catalog.");
    }

    void returnBook(String title) {
        for (Book book : books) {
            if (book != null && book.title.equals(title)) {
                book.returnBook();
                return;
            }
        }
        System.out.println("Book '" + title + "' not found in the catalog.");
    }
}