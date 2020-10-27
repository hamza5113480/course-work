#include <iostream>

class MyClass {
private:
    int value;

public:
    // Constructor
    MyClass() {
        value = 0;
        std::cout << "Constructor called!" << std::endl;
    }

    // Parameterized constructor
    MyClass(int val) {
        value = val;
        std::cout << "Parameterized constructor called with value: " << value << std::endl;
    }

    // Destructor
    ~MyClass() {
        std::cout << "Destructor called for value: " << value << std::endl;
    }

    // Member function
    void display() {
        std::cout << "Value: " << value << std::endl;
    }
};

int main() {
    // Creating objects of MyClass
    MyClass obj1; // Constructor called
    MyClass obj2(10); // Parameterized constructor called
    MyClass obj3(20); // Parameterized constructor called

    // Calling member function
    obj1.display();
    obj2.display();
    obj3.display();

    return 0;
}
