#include <iostream>

// Function to reverse a number
int reverseNumber(int num) {
    int reversedNumber = 0;
    while(num > 0) {
        reversedNumber = reversedNumber * 10 + num % 10;
        num /= 10;
    }
    return reversedNumber;
}

int main() {
    int number;
    std::cout << "Enter a number to reverse: ";
    std::cin >> number;
    int reversed = reverseNumber(number);
    std::cout << "Reversed number: " << reversed << std::endl;
    return 0;
}
