package task7;

class Book extends Item {
    String author;
    String genre;
    int numberOfPages;

    Book(String itemId, String title, String author, String genre, int numberOfPages) {
        super(itemId, title);
        this.author = author;
        this.genre = genre;
        this.numberOfPages = numberOfPages;
    }

    @Override
    void displayInfo() {
        super.displayInfo();
        System.out.println("Author: " + author);
        System.out.println("Genre: " + genre);
        System.out.println("Number of Pages: " + numberOfPages);
    }
}