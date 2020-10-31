#include <iostream>

const int ROWS = 3;
const int COLS = 3;

// Function to search for an element in a 2D array
bool searchElement(int arr[][COLS], int target) {
    for (int i = 0; i < ROWS; ++i) {
        for (int j = 0; j < COLS; ++j) {
            if (arr[i][j] == target) {
                return true;
            }
        }
    }
    return false;
}

int main() {
    int arr[ROWS][COLS] = {
            {1, 2, 3},
            {4, 5, 6},
            {7, 8, 9}
    };

    int target;
    std::cout << "Enter the element you want to search: ";
    std::cin >> target;

    if (searchElement(arr, target)) {
        std::cout << "Element " << target << " found in the array." << std::endl;
    } else {
        std::cout << "Element " << target << " not found in the array." << std::endl;
    }

    return 0;
}
