#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

struct Edge {
    int src, dest, weight;
};

struct Subset {
    int parent, rank;
};

bool compareEdges(Edge a, Edge b) {
    return a.weight < b.weight;
}

int find(Subset subsets[], int i) {
    if (subsets[i].parent != i)
        subsets[i].parent = find(subsets, subsets[i].parent);
    return subsets[i].parent;
}

void Union(Subset subsets[], int x, int y) {
    int xroot = find(subsets, x);
    int yroot = find(subsets, y);

    if (subsets[xroot].rank < subsets[yroot].rank)
        subsets[xroot].parent = yroot;
    else if (subsets[xroot].rank > subsets[yroot].rank)
        subsets[yroot].parent = xroot;
    else {
        subsets[yroot].parent = xroot;
        subsets[xroot].rank++;
    }
}

void kruskalMST(int** graph, int V, int E) {
    vector<Edge> edges;

    // Add all edges to the vector
    for (int i = 0; i < V; ++i) {
        for (int j = i + 1; j < V; ++j) {
            if (graph[i][j] != 0) {
                Edge edge = {i, j, graph[i][j]};
                edges.push_back(edge);
            }
        }
    }

    sort(edges.begin(), edges.end(), compareEdges);

    vector<Edge> result; // Store MST edges

    Subset* subsets = new Subset[V];
    for (int v = 0; v < V; ++v) {
        subsets[v].parent = v;
        subsets[v].rank = 0;
    }

    int i = 0, e = 0; // Index variables
    while (e < V - 1 && i < edges.size()) {
        Edge nextEdge = edges[i++];
        int x = find(subsets, nextEdge.src);
        int y = find(subsets, nextEdge.dest);

        if (x != y) {
            result.push_back(nextEdge);
            Union(subsets, x, y);
            ++e;
        }
    }

    // Print the MST
    cout << "Minimum Spanning Tree (MST) using Kruskal's Algorithm:" << endl;
    for (Edge edge : result) {
        cout << edge.src << " - " << edge.dest << "  Weight: " << edge.weight << endl;
    }

    delete[] subsets;
}

int main() {
    int V, E;
    cout << "Enter the number of vertices in the graph: ";
    cin >> V;
    cout << "Enter the number of edges in the graph: ";
    cin >> E;

    int** graph = new int*[V];
    for (int i = 0; i < V; ++i) {
        graph[i] = new int[V];
        fill(graph[i], graph[i] + V, 0);
    }

    cout << "Enter the edges and their weights (source destination weight):" << endl;
    for (int i = 0; i < E; ++i) {
        int src, dest, weight;
        cin >> src >> dest >> weight;
        graph[src][dest] = weight;
        graph[dest][src] = weight;
    }

    // Apply Kruskal's algorithm to find MST
    kruskalMST(graph, V, E);

    // Deallocate memory
    for (int i = 0; i < V; ++i) {
        delete[] graph[i];
    }
    delete[] graph;

    return 0;
}
