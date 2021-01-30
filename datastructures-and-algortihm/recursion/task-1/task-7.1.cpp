#include <iostream>

int triangular_number(int n) {
    if (n <= 1) {
        return n;
    } else {
        return n + triangular_number(n - 1);
    }
}

int main() {
    std::cout << "Triangular number for 4: " << triangular_number(4) << std::endl;
    return 0;
}
