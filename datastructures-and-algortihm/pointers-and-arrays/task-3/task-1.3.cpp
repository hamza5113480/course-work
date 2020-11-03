#include <iostream>

int main() {
    int x = 10, y = 20, z = 30;
    int *p = &x, *q = &y, *r = &z;

    std::cout << "Initial values:" << std::endl;
    std::cout << "x: " << x << ", y: " << y << ", z: " << z << std::endl;
    std::cout << "p: " << p << ", q: " << q << ", r: " << r << std::endl;
    std::cout << "*p: " << *p << ", *q: " << *q << ", *r: " << *r << std::endl;

    std::cout << "Swapping values..." << std::endl;
    int temp = *r;
    *r = *p;
    *p = *q;
    *q = temp;

    std::cout << "After swapping:" << std::endl;
    std::cout << "x: " << x << ", y: " << y << ", z: " << z << std::endl;
    std::cout << "p: " << p << ", q: " << q << ", r: " << r << std::endl;
    std::cout << "*p: " << *p << ", *q: " << *q << ", *r: " << *r << std::endl;

    return 0;
}
