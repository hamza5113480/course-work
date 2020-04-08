package tasks;

public class Palindrome {
    public static void main(String[] args) {
        String str = "madam"; // Example string
        System.out.println("Is '" + str + "' a palindrome? " + isPalindrome(str));
    }

    public static boolean isPalindrome(String str) {
        if (str.length() <= 1) {
            return true;
        }
        char first = str.charAt(0);
        char last = str.charAt(str.length() - 1);
        if (first != last) {
            return false;
        } else {
            return isPalindrome(str.substring(1, str.length() - 1));
        }
    }
}
