#include <iostream>
#include <vector>
#include <limits>

using namespace std;

struct GNode {
    int weight;
    GNode* ptr;
};

struct Vertex {
    int data;
    GNode* edgeList; // Adjacency list for edges
};

GNode* createGNode(int weight) {
    GNode* newNode = new GNode();
    newNode->weight = weight;
    newNode->ptr = nullptr;
    return newNode;
}

Vertex* createVertex(int data) {
    Vertex* newVertex = new Vertex();
    newVertex->data = data;
    newVertex->edgeList = nullptr;
    return newVertex;
}

void addEdge(Vertex* vertices[], int source, int destination, int weight) {
    GNode* newNode = createGNode(weight);
    newNode->ptr = vertices[destination]->edgeList;
    vertices[destination]->edgeList = newNode;
}

void DelAllMinEdges(Vertex* vertices[], int numVertices) {
    int minWeight = 100; // Initialize minWeight with maximum integer value

    // Find the minimum weight among all edges
    for (int i = 0; i < numVertices; ++i) {
        GNode* currentEdge = vertices[i]->edgeList;
        while (currentEdge != nullptr) {
            if (currentEdge->weight < minWeight) {
                minWeight = currentEdge->weight;
            }
            currentEdge = currentEdge->ptr;
        }
    }

    // Delete all edges with minimum weight
    for (int i = 0; i < numVertices; ++i) {
        GNode* prevEdge = nullptr;
        GNode* currentEdge = vertices[i]->edgeList;
        while (currentEdge != nullptr) {
            if (currentEdge->weight == minWeight) {
                if (prevEdge == nullptr) {
                    vertices[i]->edgeList = currentEdge->ptr;
                    delete currentEdge;
                    currentEdge = vertices[i]->edgeList;
                } else {
                    prevEdge->ptr = currentEdge->ptr;
                    delete currentEdge;
                    currentEdge = prevEdge->ptr;
                }
            } else {
                prevEdge = currentEdge;
                currentEdge = currentEdge->ptr;
            }
        }
    }
}

void printGraph(Vertex* vertices[], int numVertices) {
    cout << "Adjacency List of the Graph:" << endl;
    for (int i = 0; i < numVertices; ++i) {
        cout << "Vertex " << vertices[i]->data << ": ";
        GNode* currentEdge = vertices[i]->edgeList;
        while (currentEdge != nullptr) {
            cout << "(" << vertices[i]->data << " -> " << currentEdge->weight << ") ";
            currentEdge = currentEdge->ptr;
        }
        cout << endl;
    }
}

int main() {
    const int numVertices = 5;
    Vertex* vertices[numVertices];

    for (int i = 0; i < numVertices; ++i) {
        vertices[i] = createVertex(i + 1);
    }

    addEdge(vertices, 0, 1, 5);
    addEdge(vertices, 0, 2, 10);
    addEdge(vertices, 1, 3, 20);
    addEdge(vertices, 2, 3, 15);
    addEdge(vertices, 2, 4, 5);
    addEdge(vertices, 3, 4, 5);

    cout << "Before deleting minimum weight edges:" << endl;
    printGraph(vertices, numVertices);

    DelAllMinEdges(vertices, numVertices);

    cout << "\nAfter deleting minimum weight edges:" << endl;
    printGraph(vertices, numVertices);

    return 0;
}
