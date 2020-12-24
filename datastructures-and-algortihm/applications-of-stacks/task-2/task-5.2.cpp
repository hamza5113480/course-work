#include <iostream>
#include <stack>
#include <string>
#include <cctype>

using namespace std;

int precedence(char op) {
    if(op == '+' || op == '-')
        return 1;
    if(op == '*' || op == '/')
        return 2;
    return 0;
}

int applyOperation(int a, int b, char op) {
    switch(op) {
        case '+': return a + b;
        case '-': return a - b;
        case '*': return a * b;
        case '/': return a / b;
    }
    return 0;
}

int evaluate(string expression) {
    stack<int> values;
    stack<char> ops;

    for(int i = 0; i < expression.length(); i++) {
        if(expression[i] == ' ')
            continue;
        else if(isdigit(expression[i])) {
            int num = 0;
            while(i < expression.length() && isdigit(expression[i])) {
                num = num * 10 + (expression[i] - '0');
                i++;
            }
            i--;
            values.push(num);
        }
        else if(expression[i] == '+' || expression[i] == '-' ||
                expression[i] == '*' || expression[i] == '/') {
            while(!ops.empty() && precedence(ops.top()) >= precedence(expression[i])) {
                int b = values.top(); values.pop();
                int a = values.top(); values.pop();
                char op = ops.top(); ops.pop();
                values.push(applyOperation(a, b, op));
            }
            ops.push(expression[i]);
        }
    }

    while(!ops.empty()) {
        int b = values.top(); values.pop();
        int a = values.top(); values.pop();
        char op = ops.top(); ops.pop();
        values.push(applyOperation(a, b, op));
    }

    return values.top();
}

int main() {
    string expression;
    cout << "Enter the infix expression without parentheses: ";
    getline(cin, expression);
    int result = evaluate(expression);
    cout << "Result: " << result << endl;
    return 0;
}
