#include <iostream>
#include <stack>
#include <string>

// Function to check if the given expression has balanced brackets
bool isBalanced(const std::string& expression) {
    std::stack<char> stack;

    // Iterate through each character in the expression
    for (char ch : expression) {
        // If the character is an opening bracket, push it onto the stack
        if (ch == '(' || ch == '[' || ch == '{') {
            stack.push(ch);
        }
            // If the character is a closing bracket, check if there is a corresponding opening bracket
        else if (ch == ')' || ch == ']' || ch == '}') {
            // If the stack is empty, there is no matching opening bracket
            if (stack.empty()) {
                return false;
            }
            // Pop the top element of the stack and check if it matches the closing bracket
            char top = stack.top();
            stack.pop();
            if ((ch == ')' && top != '(') || (ch == ']' && top != '[') || (ch == '}' && top != '{')) {
                return false; // Mismatched brackets
            }
        }
    }

    // If the stack is not empty after scanning the entire expression, there are unmatched opening brackets
    return stack.empty();
}

int main() {
    std::string expression;
    std::cout << "Enter an expression: ";
    std::getline(std::cin, expression);

    // Check if the expression has balanced brackets
    if (isBalanced(expression)) {
        std::cout << "The expression has balanced brackets." << std::endl;
    } else {
        std::cout << "The expression does not have balanced brackets." << std::endl;
    }

    return 0;
}
