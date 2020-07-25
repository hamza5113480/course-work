package task11;

public class Main {
    public static void main(String[] args) {
        // Creating instances of shapes
        Shape circle = new Circle(5);
        Shape rectangle = new Rectangle(4, 6);
        Shape triangle = new Triangle(3, 4, 5, 6, 7);

        // Printing details of shapes
        circle.printDetails();
        System.out.println();
        rectangle.printDetails();
        System.out.println();
        triangle.printDetails();
    }
}