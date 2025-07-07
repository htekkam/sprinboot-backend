package net.javaguides.sprinboot_backend;

public class Calculator {
	
	public int add(int a, int b) {
		return a+b;
	}
	
	public int subtract(int a, int b) {
		return a-b;
	}
	
	public int division(int a, int b) {
		if(b==0)
			throw new ArithmeticException("Divide by zero");
		else
			return a/b;
	}

}
