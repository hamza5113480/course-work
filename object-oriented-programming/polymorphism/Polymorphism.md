## Polymorphism
This section contains Java programs that serve as exercises to learn Polymorphism in OOP.

## Tasks
11. **Shape Hierarchy**
   Design and implement a shape hierarchy with the following components:
    - Shape: Abstract class representing a generic shape with methods like getArea() and getPerimeter().
    - Circle: Subclass of Shape representing a circle with additional attributes like radius and methods to calculate area and perimeter.
    - Rectangle: Subclass of Shape representing a rectangle with additional attributes like length, width, and methods to calculate area and perimeter.
    - Triangle: Subclass of Shape representing a triangle with additional attributes like base, height, and methods to calculate area and perimeter.
 - Utilize polymorphism by defining a method, let's say printDetails(), in the Shape class, and override this method in each subclass to print specific details about the shape.

12. **Animal Kingdom**
    Create a simplified version of the animal kingdom with the following components:
    - Animal: Abstract class representing a generic animal with methods like makeSound() and move().
    - Dog: Subclass of Animal representing a dog with specific implementation of makeSound() and move() methods.
    - Cat: Subclass of Animal representing a cat with specific implementation of makeSound() and move() methods.
    - Bird: Subclass of Animal representing a bird with specific implementation of makeSound() and move() methods.
 - Utilize polymorphism by creating an array or list of Animal objects, then iterating through the list and calling the makeSound() and move() methods for each object. This will demonstrate how each animal behaves differently despite being treated as an Animal type.

13. **Employee Payroll System**
    Design and implement an employee payroll system with the following components:
    - Employee: Abstract class representing a generic employee with methods like calculatePay() and displayDetails().
    - SalariedEmployee: Subclass of Employee representing an employee with a fixed monthly salary.
    - HourlyEmployee: Subclass of Employee representing an employee paid by the hour.
    - CommissionedEmployee: Subclass of Employee representing an employee paid based on sales commission.
 - Utilize polymorphism by creating an array or list of Employee objects, then iterating through the list and calling the calculatePay() and displayDetails() methods for each object. This will demonstrate how each type of employee calculates pay differently despite being treated as an Employee type.

14. **Vehicle Rental System with Discount Policies**
    Design and implement a vehicle rental system with the following components:
    - Vehicle: Abstract class representing a generic vehicle with methods like calculateRentalCost() and displayDetails().
    - Car: Subclass of Vehicle representing a car with additional attributes like number of doors, fuel type, and methods to calculate rental cost and display details.
    - Bike: Subclass of Vehicle representing a bike with additional attributes like engine capacity, bike type, and methods to calculate rental cost and display details.
    - Truck: Subclass of Vehicle representing a truck with additional attributes like load capacity, number of axles, and methods to calculate rental cost and display details.
 - Implement different discount policies for each type of vehicle. For example, cars may have a discount based on the number of days rented, while bikes may have a discount based on the total rental cost.

15. **Banking System with Interest Calculation**
    Develop a banking system with the following components:
    - Account: Abstract class representing a bank account with methods like calculateInterest() and displayDetails().
    - SavingsAccount: Subclass of Account representing a savings account with additional attributes like interest rate and methods to calculate interest and display details.
    - CheckingAccount: Subclass of Account representing a checking account with additional attributes like overdraft limit and methods to calculate interest and display details.
 - Implement different interest calculation methods for each type of account. For example, savings accounts may have compound interest while checking accounts may not earn interest.

