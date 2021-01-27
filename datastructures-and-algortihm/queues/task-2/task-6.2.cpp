#include <iostream>
#include <queue>

// Function to create queues for each word in the input string
void createQueues(const std::string& input, std::queue<std::queue<char>>& queues) {
    std::string word;
    std::queue<char> q;
    for (char c : input) {
        if (c != ' ') {
            q.push(c);
        } else {
            queues.push(q);
            while (!q.empty()) {
                q.pop();
            }
        }
    }
    queues.push(q); // Push the last word's queue
}

// Function to concatenate all queues into a single queue
std::queue<char> concatenateQueues(std::queue<std::queue<char>>& queues) {
    std::queue<char> concatenatedQueue;
    while (!queues.empty()) {
        std::queue<char> current = queues.front();
        queues.pop();
        while (!current.empty()) {
            concatenatedQueue.push(current.front());
            current.pop();
        }
    }
    return concatenatedQueue;
}

int main() {
    std::string input;
    std::cout << "Enter a string: ";
    std::getline(std::cin, input);

    // Create queues for each word
    std::queue<std::queue<char>> queues;
    createQueues(input, queues);

    // Concatenate all queues
    std::queue<char> concatenatedQueue = concatenateQueues(queues);

    // Display the concatenated queue
    while (!concatenatedQueue.empty()) {
        std::cout << concatenatedQueue.front() << "→";
        concatenatedQueue.pop();
    }
    std::cout << std::endl;

    return 0;
}
