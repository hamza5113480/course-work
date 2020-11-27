#include <iostream>

// Define a node structure for the doubly linked list
struct ListNode {
    ListNode* pre;
    int Data;
    ListNode* Next;
};

// Global head pointer for the doubly linked list
ListNode* head = nullptr;

// Function to insert a node at the beginning of the doubly linked list
void insertAtBeginning(int value) {
    ListNode* newNode = new ListNode;
    newNode->Data = value;
    newNode->Next = head;
    newNode->pre = nullptr;
    if (head != nullptr) {
        head->pre = newNode;
    }
    head = newNode;
}

// Function to display the doubly linked list from head to tail
void displayForward() {
    if (head == nullptr) {
        std::cout << "List is empty." << std::endl;
        return;
    }
    ListNode* temp = head;
    while (temp != nullptr) {
        std::cout << temp->Data << " ";
        temp = temp->Next;
    }
    std::cout << std::endl;
}

// Function to move a node with given data to the front of the list
void MoveToFront(int value) {
    if (head == nullptr) {
        std::cout << "List is empty." << std::endl;
        return;
    }
    ListNode* temp = head;
    while (temp != nullptr) {
        if (temp->Data == value) {
            if (temp == head) {
                // Node is already at the front of the list
                return;
            }
            // Remove the node from its current position
            if (temp->pre != nullptr) {
                temp->pre->Next = temp->Next;
            }
            if (temp->Next != nullptr) {
                temp->Next->pre = temp->pre;
            }
            // Move the node to the front of the list
            temp->Next = head;
            temp->pre = nullptr;
            head->pre = temp;
            head = temp;
            return;
        }
        temp = temp->Next;
    }
    std::cout << "Node with value " << value << " not found." << std::endl;
}

int main() {
    // Insert elements into the doubly linked list
    insertAtBeginning(1);
    insertAtBeginning(2);
    insertAtBeginning(3);
    insertAtBeginning(4);
    insertAtBeginning(5);

    std::cout << "Original Doubly Linked List: ";
    displayForward();

    // Move node with value 3 to the front of the list
    MoveToFront(3);

    std::cout << "After MoveToFront(3): ";
    displayForward();

    // Move node with value 6 (not present in list) to the front of the list
    MoveToFront(6);

    std::cout << "After MoveToFront(6): ";
    displayForward();

    return 0;
}
