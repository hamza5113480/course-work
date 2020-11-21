#include <iostream>

// Define a node structure for the doubly linked list
struct Node {
    int data;
    Node* prev;
    Node* next;

    Node(int value) : data(value), prev(nullptr), next(nullptr) {}
};

class DoublyLinkedList {
private:
    Node* head;

public:
    DoublyLinkedList() : head(nullptr) {}

    // Function to insert a node at the beginning of the doubly linked list
    void insertAtBeginning(int value) {
        Node* newNode = new Node(value);
        if (!head) {
            head = newNode;
        } else {
            newNode->next = head;
            head->prev = newNode;
            head = newNode;
        }
    }

    // Function to insert a node at the end of the doubly linked list
    void insertAtEnd(int value) {
        Node* newNode = new Node(value);
        if (!head) {
            head = newNode;
        } else {
            Node* temp = head;
            while (temp->next) {
                temp = temp->next;
            }
            temp->next = newNode;
            newNode->prev = temp;
        }
    }

    // Function to delete a node with given data from the doubly linked list
    void deleteNode(int value) {
        if (!head) {
            std::cout << "List is empty." << std::endl;
            return;
        }
        Node* temp = head;
        if (temp->data == value) {
            head = temp->next;
            if (head)
                head->prev = nullptr;
            delete temp;
            return;
        }
        while (temp && temp->data != value) {
            temp = temp->next;
        }
        if (!temp) {
            std::cout << "Node with value " << value << " not found." << std::endl;
            return;
        }
        if (temp->prev)
            temp->prev->next = temp->next;
        if (temp->next)
            temp->next->prev = temp->prev;
        delete temp;
    }

    // Function to display the doubly linked list from head to tail
    void displayForward() {
        if (!head) {
            std::cout << "List is empty." << std::endl;
            return;
        }
        Node* temp = head;
        while (temp) {
            std::cout << temp->data << " ";
            temp = temp->next;
        }
        std::cout << std::endl;
    }

    // Function to display the doubly linked list from tail to head
    void displayBackward() {
        if (!head) {
            std::cout << "List is empty." << std::endl;
            return;
        }
        Node* temp = head;
        while (temp->next) {
            temp = temp->next;
        }
        while (temp) {
            std::cout << temp->data << " ";
            temp = temp->prev;
        }
        std::cout << std::endl;
    }

    // Destructor to free memory
    ~DoublyLinkedList() {
        Node* temp = head;
        while (temp) {
            Node* next = temp->next;
            delete temp;
            temp = next;
        }
    }
};

int main() {
    DoublyLinkedList list;
    int choice, value;

    do {
        std::cout << "\nDoubly Linked List Operations" << std::endl;
        std::cout << "1. Insert at Beginning" << std::endl;
        std::cout << "2. Insert at End" << std::endl;
        std::cout << "3. Delete Node" << std::endl;
        std::cout << "4. Display Forward" << std::endl;
        std::cout << "5. Display Backward" << std::endl;
        std::cout << "6. Exit" << std::endl;
        std::cout << "Enter your choice: ";
        std::cin >> choice;

        switch (choice) {
            case 1:
                std::cout << "Enter value to insert at beginning: ";
                std::cin >> value;
                list.insertAtBeginning(value);
                break;
            case 2:
                std::cout << "Enter value to insert at end: ";
                std::cin >> value;
                list.insertAtEnd(value);
                break;
            case 3:
                std::cout << "Enter value to delete: ";
                std::cin >> value;
                list.deleteNode(value);
                break;
            case 4:
                std::cout << "Doubly Linked List (Forward): ";
                list.displayForward();
                break;
            case 5:
                std::cout << "Doubly Linked List (Backward): ";
                list.displayBackward();
                break;
            case 6:
                std::cout << "Exiting..." << std::endl;
                break;
            default:
                std::cout << "Invalid choice. Please enter a number between 1 and 6." << std::endl;
        }
    } while (choice != 6);

    return 0;
}
