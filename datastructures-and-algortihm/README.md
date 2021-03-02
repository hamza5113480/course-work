# Tasks
1. Pointers & Arrays 
   1. Write a program with constructor function and another for destruction function.
   2. Write a program to search an element (given by user) in a 2-D array.
   3. Introduce int variables x, y, z and int* pointer variables p, q, r.
        - Set x, y, z to three distinct values. 
       - Set p, q, r to the addresses of x, y, z respectively.
       - Print with labels the values of x, y, z, p, q, r, *p, *q, *r. 
       - Print the message: Swapping values.
       - Execute the swap code: z = x; x = y; y = z; 
       - Print with labels the values of x, y, z, p, q, r, *p, *q, *r.
2. Singly Linked List
   1. Write a program to display string using linked list.
      - Take a string of character from user and split the string in character, and then insert each character into linked list.
      - Example: String = "RPI"
   2. Consider a scenario where a firm wants to maintain the data of its employees. The data containing employee number, name, and salary and department # are saved in a singly linked list. Create following functions for the employee list.
      - InsertAtFront: Insertion of a record at the front.
      - InsertAtEnd:  Insertion of a record at the end.
      - Insert:  Insertion of a record at any position in the list
      - DeleteFirst: Deletion of first record.
      - DeleteLast: Deletion of last record.
      - Delete: Deletion of a record at any position in the list.
      - Search: Searching any record based on employee number and dept no.
      - Display:  Displaying all records.
   3. Write a program to split a single linked list in two separate lists and display the both lists.
3. Doubly Linked List
   1. Write a menu-driven program to perform insertion, deletion and display functions for doubly linked list.
   2. write a function MoveToFront() with one argument of data type integer. 
      - This function will first search the linked list and compare the Data member of the node with the given number as argument. 
      - If the search finds the number in the list then this function will move that node to the start of the list. 
      - The order of the remaining nodes is to remain unchanged. If no node in the list contains the integer, MoveToFront() should leave the list unchanged. 
      - Assume that the list contains no duplicate values.
      - The structure definition of the doubly linked list is
         `structListNode{
         ListNode *pre;
         int Data;
         ListNode *Next;
         }*head;`
      -  The function declaration of MoveToFront function is Void MoveToFront(int);
4. Stacks
   1. Write this function to display the elements of stack e.g. `Void ListStack::display() { }`
   2. Implement using static stacks.
      - Write a program using stack operations, which accepts a non-negative base 10 integer as a parameter, and display binary representation of number.
      - Description: To convert a number from decimal to binary, you simply divide by two and push reminder to stack until quotient is reached to zero, then use pop operation to display the binary representation of number.
      - For example, to convert (35), to binary, you perform the following computation. 
        - 35/2 = 1 
        - 17/2 = 1
        - 8/2 = 0
        - 4/2 = 0 
        - 2/2 = 0 
        - 1 
      - If you examine the remainders from the last division to the first one, writing them down as you go, you will get the following sequence: 100011. i.e. (100011)(base2)=(35)(base10)
   3. Write a program to compare opening and closing brackets in expression.
      - This program takes an expression in the form of string and scan it character by character. Finally, the output of the program is the valid or invalid expression. 
      - Algorithm:
        - To do this comparison a stack ADT can be used to keep track of the scope delimiters encountered while scanning the expression.
        - Whenever a scope "opener" is encountered, it can be "pushed" onto a stack Whenever a scope "ender" is encountered, the stack is examined: 
          - If the stack is "empty", there is no matching scope "opener" and the expression is invalid.
          - If the stack is not empty, we pop the stack and check if the "popped" item corresponds to the scope ender
          - If match occurs, we continue scanning the expression
        - When end of the expression string is reached, the stack must be empty, otherwise one or more opened scopes have not been closed and the expression is invalid
5. Application of Stacks
   1. Take a string expression as input from user. Using this infix expression, you have to convert it into its equivalent postfix notation.
   ` - Example: a+(b*c)`
   2. Write code to evaluate the infix expression without parenthesis given by user. 
      `- Example: 3+4-5/2`
6. Queues
   1. Write a menu driven program to perform different operations with queue such aEnqueue(), Dequeue() and DisplayQueue().
   2. In this Exercise, you have to take a single string as input. Using this input string, you have to create multiple queues in which each queue will consist of separate word appeared in input string. At the end, you will again concatenate all queues to a single queue.
      - Example: String = "Data Structure and Algo" 
        - Q1 D→a→t→a
        - Q2 S→t→r→u→c→t→u→r→e
        - Q3 a→n→d
        - Q4 A→l→g→o
      - At the end concatenate all queues and display them.
        - Q1→Q2→Q-3→Q4
7. Recursion
   1. Write a function to calculate triangular number using recursion. 
      - Int tri_num(int x);
      - tri_num(4)=10 i.e. 4+3+2+1+0=10"
   2. Create a recursive function for Fibonacci series and a program for calculating it. In mathematics, the Fibonacci numbers are the numbers in the following integer sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21
   3. Write a recursive function to display the data members of linked List in reverse order.
   4. Write a program to reverse a number
   5. Write a recursive function to implement the algorithm of tower of Hanoi.
8. Sorting
   1. Write a program to sort a given array by using the insertion sort.
   2. Write a program to sort a given array by using the bubble sort.
   3. Write a program to sort a given array by using the merge sort.
9. Searching 
   1. Create function for each algorithm using Array:
      - Linear search 
      - Binary search
      - `Input list of numbers: 6 13 14 25 33 43 51 53 64 72 84 93 95 96 97`
   2. Write a program to search an element linearly from the entered numbers. Also, indicate its position in case the element is found or unavailability.
   3. Write a program to demonstrate binary search. Use character array and store 10 names. This program prompts the user to enter ten names. They are stored in ascending order the name  (15) (10) the fn(15) is used to store the name which we want to search.
10. Binary Trees
    1. Write a menu-driven program for inserting the elements into the binary tree and deleting the element.
    2. Degree of a node is the number of children it has. Write a program for finding total number of nodes having degree 2 (two), number of nodes having degree 1 (one) and number of nodes having degree 0 (zero).
    3. Write a menu-driven program for various traversals such as
        - Preorder traversals
        - Inorder traversals
        - Postorder traversals
