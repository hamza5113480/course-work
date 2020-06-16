package task4;

class Book {
    String title;
    String author;
    boolean available;

    Book(String title, String author) {
        this.title = title;
        this.author = author;
        this.available = true;
    }

    boolean isAvailable() {
        return available;
    }

    void borrow() {
        if (available) {
            available = false;
            System.out.println("Book '" + title + "' by " + author + " has been borrowed.");
        } else {
            System.out.println("Book '" + title + "' by " + author + " is not available.");
        }
    }

    void returnBook() {
        if (!available) {
            available = true;
            System.out.println("Book '" + title + "' by " + author + " has been returned.");
        } else {
            System.out.println("Book '" + title + "' by " + author + " has already been returned.");
        }
    }

    @Override
    public String toString() {
        return "Book{" +
                "title='" + title + '\'' +
                ", author='" + author + '\'' +
                ", available=" + available +
                '}';
    }
}
