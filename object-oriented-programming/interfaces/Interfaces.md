## Interfaces
### Task
 - Suppose you are designing a system for a zoo where you have different types of animals and flying creatures. However, some animals can also fly. You want to model this using interfaces.

   - Define an interface called Animal with a default method move(), which prints "Animal is moving".
   - Define another interface called FlyingCreature with a default method move(), which prints "Flying creature is flying".
   - Create a class called Bird that implements both the Animal and FlyingCreature interfaces. Implement the move() method in Bird class such that it prints "Bird is flying".
   - Create another class called Lion that implements only the Animal interface. Implement the move() method in Lion class such that it prints "Lion is walking".
   - Now, create a main program to test these classes:

          public class Main {
          public static void main(String[] args) {
          Animal bird = new Bird();
          bird.move(); // Expected output: Bird is flying
        
                  Animal lion = new Lion();
                  lion.move(); // Expected output: Lion is walking
              }
          }
**Explanation:**
 - In this exercise, we have two interfaces, Animal and FlyingCreature, both of which have a default method move().
 - The Bird class implements both interfaces. Since it inherits from both interfaces, it encounters the diamond problem where it has to resolve the conflict between the default methods with the same signature from both interfaces.
 - The Lion class implements only the Animal interface, so it doesn't encounter the diamond problem.
**Challenges:**
 - Implement the Bird class in such a way that it resolves the diamond problem by overriding the move() method to provide a custom implementation.
 - Understand the concept of default methods and how they can cause conflicts when multiple interfaces are implemented.
 - Explore ways to resolve conflicts in default methods when multiple interfaces are implemented by a class.