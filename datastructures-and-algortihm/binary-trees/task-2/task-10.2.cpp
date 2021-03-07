#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* left;
    Node* right;
};

Node* createNode(int value) {
    Node* newNode = new Node();
    newNode->data = value;
    newNode->left = newNode->right = nullptr;
    return newNode;
}

void countNodesByDegree(Node* root, int& degree0, int& degree1, int& degree2) {
    if (root == nullptr) return;

    int degree = 0;
    if (root->left != nullptr) degree++;
    if (root->right != nullptr) degree++;

    if (degree == 0) degree0++;
    else if (degree == 1) degree1++;
    else degree2++;

    countNodesByDegree(root->left, degree0, degree1, degree2);
    countNodesByDegree(root->right, degree0, degree1, degree2);
}

int main() {
    Node* root = createNode(1);
    root->left = createNode(2);
    root->right = createNode(3);
    root->left->left = createNode(4);
    root->left->right = createNode(5);
    root->right->left = createNode(6);
    root->right->right = createNode(7);

    int degree0 = 0, degree1 = 0, degree2 = 0;

    countNodesByDegree(root, degree0, degree1, degree2);

    cout << "Number of nodes with degree 0: " << degree0 << endl;
    cout << "Number of nodes with degree 1: " << degree1 << endl;
    cout << "Number of nodes with degree 2: " << degree2 << endl;

    return 0;
}
