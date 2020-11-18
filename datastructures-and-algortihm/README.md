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
