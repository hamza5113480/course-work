package task5;

class RestaurantMenu {
    MenuItem[] menuItems;
    int itemCount;

    RestaurantMenu(int capacity) {
        menuItems = new MenuItem[capacity];
        itemCount = 0;
    }

    void addItem(String name, String description, double price) {
        if (itemCount < menuItems.length) {
            menuItems[itemCount++] = new MenuItem(name, description, price);
            System.out.println("Menu item '" + name + "' has been added to the menu.");
        } else {
            System.out.println("The menu is full. Cannot add more items.");
        }
    }

    void updateItem(String name, String description, double price) {
        for (int i = 0; i < itemCount; i++) {
            if (menuItems[i].name.equals(name)) {
                menuItems[i].updateItem(description, price);
                return;
            }
        }
        System.out.println("Menu item '" + name + "' not found.");
    }

    void displayMenu() {
        System.out.println("Menu:");
        for (int i = 0; i < itemCount; i++) {
            System.out.println(menuItems[i]);
        }
    }
}