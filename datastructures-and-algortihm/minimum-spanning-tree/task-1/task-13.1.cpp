#include <iostream>
#include <climits>
using namespace std;

int minKey(int key[], bool mstSet[], int numVertices) {
    int minIndex, minValue = INT_MAX;
    for (int v = 0; v < numVertices; ++v) {
        if (mstSet[v] == false && key[v] < minValue) {
            minValue = key[v];
            minIndex = v;
        }
    }
    return minIndex;
}

void printMST(int parent[], int graph[][5], int numVertices) {
    cout << "Edge \tWeight" << endl;
    for (int i = 1; i < numVertices; ++i)
        cout << parent[i] << " - " << i << "\t" << graph[i][parent[i]] << endl;
}

void primMST(int graph[][5], int numVertices) {
    int parent[numVertices];
    int key[numVertices];
    bool mstSet[numVertices];

    for (int i = 0; i < numVertices; ++i) {
        key[i] = INT_MAX;
        mstSet[i] = false;
    }

    key[0] = 0;
    parent[0] = -1;

    for (int count = 0; count < numVertices - 1; ++count) {
        int u = minKey(key, mstSet, numVertices);

        mstSet[u] = true;


        for (int v = 0; v < numVertices; ++v)
            if (graph[u][v] && mstSet[v] == false && graph[u][v] < key[v])
                parent[v] = u, key[v] = graph[u][v];
    }

    printMST(parent, graph, numVertices);
}

int main() {
    int graph[5][5] = {{0, 2, 0, 6, 0},
                       {2, 0, 3, 8, 0},
                       {0, 3, 0, 0, 0},
                       {6, 8, 0, 0, 0},
                       {0, 0, 0, 0, 0}};

    primMST(graph, 5);

    return 0;
}
