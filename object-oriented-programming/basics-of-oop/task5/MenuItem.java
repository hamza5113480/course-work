package task5;

class MenuItem {
    String name;
    String description;
    double price;

    MenuItem(String name, String description, double price) {
        this.name = name;
        this.description = description;
        this.price = price;
    }

    void updateItem(String description, double price) {
        this.description = description;
        this.price = price;
        System.out.println("Menu item '" + name + "' has been updated.");
    }

    @Override
    public String toString() {
        return "MenuItem{" +
                "name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", price=" + price +
                '}';
    }
}