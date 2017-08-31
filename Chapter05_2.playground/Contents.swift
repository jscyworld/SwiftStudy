//: Playground - noun: a place where people can play

import UIKit
import Foundation

// 5.2 함수타입

func sum (_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}
func ano_sum (num1: Int, num2: Int) -> Int {
    return num1 + num2
}
func diff (_ num1: Int, _ num2: Int) -> Int {
    return abs(num1 - num2) // 절대값
}

print(sum(2,3))
print(ano_sum(num1: 2, num2: 5))


// 5.2.1 함수 타입 변수 정의하기

var myFunction: (Int, Int) -> Int = sum
print(myFunction(2,4))

// 5.2.2 함수 타입 변수 호출하기

myFunction = diff
print(myFunction(2,4))

// 5.2.3 함수 안에서 함수 타입 반환하기

func chooseFunc (_ choice: Int) -> (Int, Int) -> Int {
    if choice == 0 {
        return sum
    } else {
        return diff
    }
}

var funcToUse = chooseFunc(0)
print(funcToUse(2,5))

funcToUse = chooseFunc(2)
print(funcToUse(2,5))

// chooseFunc은 중첩함수(5.3)로 다시 표현할 수 있다.
/*
 
 func chooseFunc (_ choice: Int) -> (Int, Int) -> Int {
    func sum (_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
    func diff (_ num1: Int, _ num2: Int) -> Int {
        return abs(num1 - num2)
    }
 
    if choice == 0 {
        return sum
    } else {
        return diff
    }
 }
 
 */



