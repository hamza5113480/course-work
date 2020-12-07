#include <iostream>

#define MAX_SIZE 100

// Define a static stack class
class StaticStack {
private:
    int top;
    int data[MAX_SIZE];

public:
    StaticStack() : top(-1) {}

    // Function to push an element onto the stack
    void push(int value) {
        if (top >= MAX_SIZE - 1) {
            std::cout << "Stack Overflow!" << std::endl;
            return;
        }
        data[++top] = value;
    }

    // Function to pop an element from the stack
    int pop() {
        if (top < 0) {
            std::cout << "Stack Underflow!" << std::endl;
            return -1;
        }
        return data[top--];
    }

    // Function to check if the stack is empty
    bool isEmpty() {
        return top < 0;
    }
};

// Function to convert a decimal number to binary using stack
void decimalToBinary(int decimal) {
    StaticStack stack;
    int quotient = decimal;

    while (quotient != 0) {
        stack.push(quotient % 2);
        quotient /= 2;
    }

    std::cout << "Binary representation of " << decimal << " is: ";
    while (!stack.isEmpty()) {
        std::cout << stack.pop();
    }
    std::cout << std::endl;
}

int main() {
    int decimal;
    std::cout << "Enter a non-negative decimal number: ";
    std::cin >> decimal;

    if (decimal < 0) {
        std::cout << "Please enter a non-negative number." << std::endl;
    } else {
        decimalToBinary(decimal);
    }

    return 0;
}
