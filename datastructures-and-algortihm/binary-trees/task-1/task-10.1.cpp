#include <iostream>
using namespace std;

// Node structure for the binary search tree
struct Node {
    int data;
    Node* left;
    Node* right;
};

// Function to create a new node
Node* createNode(int value) {
    Node* newNode = new Node();
    newNode->data = value;
    newNode->left = newNode->right = nullptr;
    return newNode;
}

// Function to insert a new element into the binary search tree
Node* insertNode(Node* root, int value) {
    if (root == nullptr) {
        root = createNode(value);
    } else if (value <= root->data) {
        root->left = insertNode(root->left, value);
    } else {
        root->right = insertNode(root->right, value);
    }
    return root;
}

// Function to find the minimum value node in a binary search tree
Node* findMin(Node* root) {
    while (root->left != nullptr) {
        root = root->left;
    }
    return root;
}

// Function to delete a node from the binary search tree
Node* deleteNode(Node* root, int value) {
    if (root == nullptr) return root;
    else if (value < root->data) root->left = deleteNode(root->left, value);
    else if (value > root->data) root->right = deleteNode(root->right, value);
    else {
        // Case 1: No child or only one child
        if (root->left == nullptr) {
            Node* temp = root->right;
            delete root;
            return temp;
        } else if (root->right == nullptr) {
            Node* temp = root->left;
            delete root;
            return temp;
        }
        // Case 2: Node with two children
        Node* temp = findMin(root->right);
        root->data = temp->data;
        root->right = deleteNode(root->right, temp->data);
    }
    return root;
}

// Function to print the binary search tree (inorder traversal)
void inorderTraversal(Node* root) {
    if (root == nullptr) return;
    inorderTraversal(root->left);
    cout << root->data << " ";
    inorderTraversal(root->right);
}

int main() {
    Node* root = nullptr;
    int choice, element;

    do {
        cout << "\nBinary Search Tree Operations:" << endl;
        cout << "1. Insert element" << endl;
        cout << "2. Delete element" << endl;
        cout << "3. Display tree (Inorder traversal)" << endl;
        cout << "4. Exit" << endl;
        cout << "Enter your choice: ";
        cin >> choice;

        switch (choice) {
            case 1:
                cout << "Enter element to insert: ";
                cin >> element;
                root = insertNode(root, element);
                break;
            case 2:
                if (root == nullptr) {
                    cout << "Tree is empty!" << endl;
                } else {
                    cout << "Enter element to delete: ";
                    cin >> element;
                    root = deleteNode(root, element);
                }
                break;
            case 3:
                cout << "Binary Search Tree (Inorder traversal): ";
                inorderTraversal(root);
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
