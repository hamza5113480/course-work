#include <iostream>

// Define a node structure for the linked list
struct Node {
    int data;
    Node* next;

    Node(int value) : data(value), next(nullptr) {}
};

// Function to insert a node at the end of a linked list
void insertAtEnd(Node*& head, int value) {
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

// Function to split a single linked list into two separate lists
void splitLinkedList(Node* original, Node*& list1, Node*& list2) {
    Node* slow = original;
    Node* fast = original->next;

    // Move 'fast' pointer two steps ahead and 'slow' pointer one step ahead
    // When 'fast' reaches the end, 'slow' will be at the middle of the list
    while (fast) {
        fast = fast->next;
        if (fast) {
            slow = slow->next;
            fast = fast->next;
        }
    }

    // 'slow' points to the middle node, so split the list at this point
    list1 = original;
    list2 = slow->next;
    slow->next = nullptr;
}

// Function to display a linked list
void displayList(Node* head) {
    Node* temp = head;
    while (temp) {
        std::cout << temp->data << " ";
        temp = temp->next;
    }
    std::cout << std::endl;
}

int main() {
    Node* head = nullptr; // Original linked list
    Node* list1 = nullptr; // First list after split
    Node* list2 = nullptr; // Second list after split

    // Insert elements into the original linked list
    insertAtEnd(head, 1);
    insertAtEnd(head, 2);
    insertAtEnd(head, 3);
    insertAtEnd(head, 4);
    insertAtEnd(head, 5);

    std::cout << "Original Linked List: ";
    displayList(head);

    // Split the original linked list into two separate lists
    splitLinkedList(head, list1, list2);

    std::cout << "First List after Split: ";
    displayList(list1);

    std::cout << "Second List after Split: ";
    displayList(list2);

    return 0;
}
