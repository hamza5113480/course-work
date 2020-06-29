package task7;

class DVD extends Item {
    String director;
    String genre;
    int duration;

    DVD(String itemId, String title, String director, String genre, int duration) {
        super(itemId, title);
        this.director = director;
        this.genre = genre;
        this.duration = duration;
    }

    @Override
    void displayInfo() {
        super.displayInfo();
        System.out.println("Director: " + director);
        System.out.println("Genre: " + genre);
        System.out.println("Duration: " + duration + " minutes");
    }
}