#include <iostream>
#include <vector>

using namespace std;

// Linear Search
int linearSearch(const vector<int>& arr, int target) {
    for (int i = 0; i < arr.size(); ++i) {
        if (arr[i] == target) {
            return i; // Return the index where the target is found
        }
    }
    return -1; // Return -1 if target is not found
}

// Binary Search (Assuming the array is sorted in ascending order)
int binarySearch(const vector<int>& arr, int target) {
    int left = 0;
    int right = arr.size() - 1;

    while (left <= right) {
        int mid = left + (right - left) / 2;

        if (arr[mid] == target) {
            return mid; // Return the index where the target is found
        } else if (arr[mid] < target) {
            left = mid + 1; // Discard left half
        } else {
            right = mid - 1; // Discard right half
        }
    }

    return -1; // Return -1 if target is not found
}

int main() {
    vector<int> numbers = {6, 13, 14, 25, 33, 43, 51, 53, 64, 72, 84, 93, 95, 96, 97};
    int target;

    cout << "Enter the number you want to search: ";
    cin >> target;

    int linearIndex = linearSearch(numbers, target);
    if (linearIndex != -1) {
        cout << "Linear Search: Found at index " << linearIndex << endl;
    } else {
        cout << "Linear Search: Not found" << endl;
    }

    int binaryIndex = binarySearch(numbers, target);
    if (binaryIndex != -1) {
        cout << "Binary Search: Found at index " << binaryIndex << endl;
    } else {
        cout << "Binary Search: Not found" << endl;
    }

    return 0;
}
