#include <iostream>
#include <vector>

using namespace std;

int linearSearch(const vector<int>& arr, int target) {
    for (int i = 0; i < arr.size(); ++i) {
        if (arr[i] == target) {
            return i + 1; // Position starts from 1
        }
    }
    return -1; // Return -1 if target is not found
}

int main() {
    vector<int> numbers;
    int size, target;

    // Input the size of the list
    cout << "Enter the number of elements: ";
    cin >> size;

    // Input the list of numbers
    cout << "Enter the numbers:\n";
    for (int i = 0; i < size; ++i) {
        int num;
        cin >> num;
        numbers.push_back(num);
    }

    // Input the target element to search
    cout << "Enter the number you want to search: ";
    cin >> target;

    // Perform linear search
    int position = linearSearch(numbers, target);

    // Display the result
    if (position != -1) {
        cout << "Element found at position: " << position << endl;
    } else {
        cout << "Element not found" << endl;
    }

    return 0;
}
