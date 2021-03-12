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

void preorderTraversal(Node* root) {
    if (root == nullptr) return;
    cout << root->data << " "; // Visit the current node
    preorderTraversal(root->left); // Traverse left subtree
    preorderTraversal(root->right); // Traverse right subtree
}

void inorderTraversal(Node* root) {
    if (root == nullptr) return;
    inorderTraversal(root->left); // Traverse left subtree
    cout << root->data << " "; // Visit the current node
    inorderTraversal(root->right); // Traverse right subtree
}

void postorderTraversal(Node* root) {
    if (root == nullptr) return;
    postorderTraversal(root->left); // Traverse left subtree
    postorderTraversal(root->right); // Traverse right subtree
    cout << root->data << " "; // Visit the current node
}

int main() {
    // Creating a binary tree
    Node* root = createNode(1);
    root->left = createNode(2);
    root->right = createNode(3);
    root->left->left = createNode(4);
    root->left->right = createNode(5);
    root->right->left = createNode(6);
    root->right->right = createNode(7);

    int choice;
    do {
        cout << "\nBinary Tree Traversal Menu:" << endl;
        cout << "1. Preorder Traversal" << endl;
        cout << "2. Inorder Traversal" << endl;
        cout << "3. Postorder Traversal" << endl;
        cout << "4. Exit" << endl;
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {
            case 1:
                cout << "Preorder Traversal: ";
                preorderTraversal(root);
                cout << endl;
                break;
            case 2:
                cout << "Inorder Traversal: ";
                inorderTraversal(root);
                cout << endl;
                break;
            case 3:
                cout << "Postorder Traversal: ";
                postorderTraversal(root);
                cout << endl;
                break;
            case 4:
                cout << "Exiting program..." << endl;
                break;
            default:
                cout << "Invalid choice! Please enter a valid option." << endl;
        }
    } while (choice != 4);

    return 0;
}
