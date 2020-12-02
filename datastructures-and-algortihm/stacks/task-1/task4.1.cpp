#include <iostream>

// Define a node structure for the stack
struct Node {
    int data;
    Node* next;

    Node(int value) : data(value), next(nullptr) {}
};

// Define a stack class
class ListStack {
private:
    Node* top;

public:
    ListStack() : top(nullptr) {}

    // Function to push a value onto the stack
    void push(int value) {
        Node* newNode = new Node(value);
        newNode->next = top;
        top = newNode;
    }

    // Function to pop a value from the stack
    void pop() {
        if (isEmpty()) {
            std::cout << "Stack is empty. Cannot pop." << std::endl;
            return;
        }
        Node* temp = top;
        top = top->next;
        delete temp;
    }

    // Function to check if the stack is empty
    bool isEmpty() {
        return top == nullptr;
    }

    // Function to display the elements of the stack
    void display() {
        if (isEmpty()) {
            std::cout << "Stack is empty." << std::endl;
            return;
        }
        Node* temp = top;
        std::cout << "Stack: ";
        while (temp != nullptr) {
            std::cout << temp->data << " ";
            temp = temp->next;
        }
        std::cout << std::endl;
    }

    // Destructor to free memory
    ~ListStack() {
        while (!isEmpty()) {
            pop();
        }
    }
};

int main() {
    ListStack stack;

    // Push some values onto the stack
    stack.push(5);
    stack.push(10);
    stack.push(15);

    // Display the elements of the stack
    stack.display();

    // Pop an element from the stack
    stack.pop();

    // Display the elements of the stack after popping
    stack.display();

    return 0;
}
