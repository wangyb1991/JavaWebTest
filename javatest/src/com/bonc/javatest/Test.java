package com.bonc.javatest;

//class Person {
//	public void eat(Apple apple) {
//		Apple peeled = apple.getPeeled();
//		System.out.println("Yummy");
//	}
//}
//
//class Peeler {
//	static Apple peel(Apple apple) {
//		return apple;
//	}
//}
//
//class Apple {
//	Apple getPeeled() {
//		return Peeler.peel(this);
//	}
//}

class Cup {
	Cup(int marker) {
		System.out.println("cup("+marker+")");
	}
	void f(int marker) {
		System.out.println("f("+marker+")");
	}
}

class Cups {
	static Cup cup1 = new Cup(1);
	static Cup cup2 = new Cup(2);
//	static {
//		cup1 = new Cup(1);
//		cup2 = new Cup(2);
//	}
	Cups() {
		System.out.println("Cups()");
	}
}

public class Test {
//	public static void main(String[] args) {
//		new Person().eat(new Apple());
//	}
	public static void main(String[] args) {
		System.out.println("abc");
//		Cups cups = new Cups();
		Cups.cup1.f(99);
	}
//	static Cups cups1 = new Cups();
//	static Cups cups2 = new Cups();
}
