package task11;

class Triangle extends Shape {
    private double base;
    private double height;
    private double side1;
    private double side2;
    private double side3;

    public Triangle(double base, double height, double side1, double side2, double side3) {
        this.base = base;
        this.height = height;
        this.side1 = side1;
        this.side2 = side2;
        this.side3 = side3;
    }

    @Override
    double getArea() {
        return 0.5 * base * height;
    }

    @Override
    double getPerimeter() {
        return side1 + side2 + side3;
    }

    @Override
    void printDetails() {
        System.out.println("Triangle Details:");
        System.out.println("Base: " + base);
        System.out.println("Height: " + height);
        System.out.println("Side1: " + side1);
        System.out.println("Side2: " + side2);
        System.out.println("Side3: " + side3);
        System.out.println("Area: " + getArea());
        System.out.println("Perimeter: " + getPerimeter());
    }
}