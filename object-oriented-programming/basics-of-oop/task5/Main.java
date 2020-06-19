package task5;

public class Main {
    public static void main(String[] args) {
        RestaurantMenu menu = new RestaurantMenu(5);

        // Adding items to the menu
        menu.addItem("Burger", "Beef patty with lettuce and tomato", 8.99);
        menu.addItem("Pizza", "Thin crust pizza with assorted toppings", 10.99);

        // Displaying the menu
        menu.displayMenu();

        // Updating an item
        menu.updateItem("Burger", "Beef patty with lettuce, tomato, and cheese", 9.99);

        // Displaying the menu after update
        menu.displayMenu();
    }
}