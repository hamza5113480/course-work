#include <iostream>
#include <string>

// Define a node structure for the linked list
struct Node {
    char data;
    Node* next;

    Node(char value) : data(value), next(nullptr) {}
};

// Define a class for the linked list
class LinkedList {
private:
    Node* head;

public:
    LinkedList() : head(nullptr) {}

    // Function to insert a character at the end of the linked list
    void insert(char value) {
        Node* newNode = new Node(value);
        if (!head) {
            head = newNode;
        } else {
            Node* temp = head;
            while (temp->next) {
                temp = temp->next;
            }
            temp->next = newNode;
        }
    }

    // Function to display the characters stored in the linked list
    void display() {
        Node* temp = head;
        while (temp) {
            std::cout << temp->data << " ";
            temp = temp->next;
        }
        std::cout << std::endl;
    }
};

int main() {
    std::string input;
    std::cout << "Enter a string: ";
    std::getline(std::cin, input);

    LinkedList list;

    // Split the input string into characters and insert them into the linked list
    for (char ch : input) {
        list.insert(ch);
    }

    std::cout << "Characters in the linked list: ";
    list.display();

    return 0;
}
