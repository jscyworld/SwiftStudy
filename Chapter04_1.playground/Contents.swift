//: Playground - noun: a place where people can play

import UIKit
import Foundation

/*
 
 -- Chapter 4. 기본 연산자
 
 */



// 4.1 대입 연산자
/*
 let(var)a = b
 
 상수/변수 a에 b를 할당한다
 */

// 4.2 산술 연산자

// 4.2.1 ~ 5 + - * / %

// 4.2.6 증가/감소 연산자 -- Swift 3.0에서는 없음

// 4.2.7 nil 결합 연산자
var gender:String?

var genderOfCustomer:String
if gender == nil {
    genderOfCustomer = "male"
} else {
    genderOfCustomer = gender!
}

var genderOfCustomer2 = gender ?? "male"

var genderOfCustomer3 = gender == nil ? "male" : gender!

// 4.3 비교 연산자 == != < <= > >=

// 4.4 범위 연산자
// a...b : a부터 b까지(포함)의 범위
// a..<b : a부터 b까지의 범위. 하지만 b는 포함하지 않는다

for num in 5...9 {
    print(num, terminator: " ")
}
print()

for num in 5..<9 {
    print(num, terminator: " ")
}
print()

var fruits = ["apple", "orange", "pineapple", "durian", "rambutan"]
for n in 0..<fruits.count {
    print(fruits[n], terminator: " ")
}
print()

// 4.5 논리 연산자 !(not) &&(and) ||(or)
// 4.5.5 삼항 조건 연산자 // variable = condition ? true : false
