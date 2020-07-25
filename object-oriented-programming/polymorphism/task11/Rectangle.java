package task11;

class Rectangle extends Shape {
    private double length;
    private double width;

    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    @Override
    double getArea() {
        return length * width;
    }

    @Override
    double getPerimeter() {
        return 2 * (length + width);
    }

    @Override
    void printDetails() {
        System.out.println("Rectangle Details:");
        System.out.println("Length: " + length);
        System.out.println("Width: " + width);
        System.out.println("Area: " + getArea());
        System.out.println("Perimeter: " + getPerimeter());
    }
}
