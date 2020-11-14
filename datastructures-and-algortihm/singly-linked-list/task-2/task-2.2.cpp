#include <iostream>
#include <string>

struct Employee {
    int empNumber;
    std::string name;
    float salary;
    int deptNumber;
    Employee* next;

    Employee(int number, const std::string& empName, float empSalary, int deptNum)
            : empNumber(number), name(empName), salary(empSalary), deptNumber(deptNum), next(nullptr) {}
};

class EmployeeList {
private:
    Employee* head;

public:
    EmployeeList() : head(nullptr) {}

    // Insert a record at the front of the list
    void insertAtFront(int empNumber, const std::string& name, float salary, int deptNumber) {
        Employee* newEmployee = new Employee(empNumber, name, salary, deptNumber);
        newEmployee->next = head;
        head = newEmployee;
    }

    // Insert a record at the end of the list
    void insertAtEnd(int empNumber, const std::string& name, float salary, int deptNumber) {
        Employee* newEmployee = new Employee(empNumber, name, salary, deptNumber);
        if (!head) {
            head = newEmployee;
        } else {
            Employee* temp = head;
            while (temp->next) {
                temp = temp->next;
            }
            temp->next = newEmployee;
        }
    }

    // Insert a record at any position in the list
    void insert(int empNumber, const std::string& name, float salary, int deptNumber, int position) {
        if (position <= 0) {
            std::cout << "Invalid position. Position should be greater than 0." << std::endl;
            return;
        }
        if (position == 1) {
            insertAtFront(empNumber, name, salary, deptNumber);
        } else {
            Employee* newEmployee = new Employee(empNumber, name, salary, deptNumber);
            Employee* temp = head;
            for (int i = 1; i < position - 1 && temp; ++i) {
                temp = temp->next;
            }
            if (!temp) {
                std::cout << "Invalid position." << std::endl;
                delete newEmployee;
                return;
            }
            newEmployee->next = temp->next;
            temp->next = newEmployee;
        }
    }

    // Delete the first record
    void deleteFirst() {
        if (!head) {
            std::cout << "List is empty." << std::endl;
            return;
        }
        Employee* temp = head;
        head = head->next;
        delete temp;
    }

    // Delete the last record
    void deleteLast() {
        if (!head) {
            std::cout << "List is empty." << std::endl;
            return;
        }
        if (!head->next) {
            delete head;
            head = nullptr;
            return;
        }
        Employee* temp = head;
        while (temp->next->next) {
            temp = temp->next;
        }
        delete temp->next;
        temp->next = nullptr;
    }

    // Delete a record at any position in the list
    void deleteAtPosition(int position) {
        if (!head || position <= 0) {
            std::cout << "List is empty or invalid position." << std::endl;
            return;
        }
        if (position == 1) {
            deleteFirst();
        } else {
            Employee* temp = head;
            Employee* prev = nullptr;
            for (int i = 1; i < position && temp; ++i) {
                prev = temp;
                temp = temp->next;
            }
            if (!temp) {
                std::cout << "Invalid position." << std::endl;
                return;
            }
            prev->next = temp->next;
            delete temp;
        }
    }

    // Search for a record based on employee number and department number
    void search(int empNumber, int deptNumber) {
        if (!head) {
            std::cout << "List is empty." << std::endl;
            return;
        }
        Employee* temp = head;
        while (temp) {
            if (temp->empNumber == empNumber && temp->deptNumber == deptNumber) {
                std::cout << "Employee Number: " << temp->empNumber << ", Name: " << temp->name
                          << ", Salary: " << temp->salary << ", Department Number: " << temp->deptNumber << std::endl;
                return;
            }
            temp = temp->next;
        }
        std::cout << "Employee not found." << std::endl;
    }

    // Display all records
    void display() {
        if (!head) {
            std::cout << "List is empty." << std::endl;
            return;
        }
        Employee* temp = head;
        while (temp) {
            std::cout << "Employee Number: " << temp->empNumber << ", Name: " << temp->name
                      << ", Salary: " << temp->salary << ", Department Number: " << temp->deptNumber << std::endl;
            temp = temp->next;
        }
    }

    // Destructor to free memory
    ~EmployeeList() {
        Employee* temp = head;
        while (temp) {
            Employee* next = temp->next;
            delete temp;
            temp = next;
        }
    }
};

int main() {
    EmployeeList empList;

    empList.insertAtFront(101, "John", 50000, 1);
    empList.insertAtEnd(102, "Alice", 60000, 2);
    empList.insert(103, "Bob", 55000, 3, 2); // Insert Bob between John and Alice

    std::cout << "After insertion:" << std::endl;
    empList.display();

    empList.deleteFirst();
    empList.deleteLast();

    std::cout << "\nAfter deletion:" << std::endl;
    empList.display();

    empList.insertAtEnd(104, "Charlie", 70000, 4);
    empList.insertAtFront(105, "Eva", 55000, 5);

    std::cout << "\nAfter re-insertion:" << std::endl;
    empList.display();

    std::cout << "\nSearching for employee with number 103 and department number 3:" << std::endl;
    empList.search(103, 3);

    std::cout << "\nSearching for employee with number 106 and department number 5:" << std::endl;
    empList.search(106, 5);

    return 0;
}
