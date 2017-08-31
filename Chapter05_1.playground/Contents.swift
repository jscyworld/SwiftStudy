//: Playground - noun: a place where people can play

import UIKit
import Foundation

/*
 
 -- Chapter 5. 함수
 
 */



// 5.1 함수 호출과 정의
/*
 
 func doSomething() {
    print("doSomething")
 }
 
 */
func doSomething1() {
    print("doSomething")
}
doSomething1()

// 5.1.1 입력 매개 변수
/*
 
 func doSomething(num: Int) {
    print(num)
 }
 
 func doSomething(num1: Int, num2: Int) {
    print(num1, num2)
 }
 
 */
func doSomething2(num: Int) {
    print(num)
}
doSomething2(num: 2)

var num = 5
doSomething2(num: num)

func doSomething3(num1: Int, num2: Int) {
    print(num1, num2)
}
doSomething3(num1: 3, num2: 5)



// 5.1.2 값 반환하기
/*
 
 func doSomething(num1: Int, num2: Int, num3: Int) -> Int {
    return num1 + num2 + num3
 }
 
 */
func sum(num1: Int, num2: Int) -> Int {
    return num1 + num2
}
var result = sum(num1: 5,num2: 2)
print(sum(num1: 5, num2: 2))
print(result)

func sum2(_ num1: Int, _ num2: Int) -> Int {
    return num1 + num2
}
sum2(4, 5)
print(sum2(2, 3))

// 5.1.3 복수의 값 반환하기
func countNumbers(string: String) -> (odd: Int, even: Int) {
    var odd = 0, even = 0
    for char in string.characters {
        let digit = Int(String(char))
        if (digit != nil) {
            (digit!) % 2 == 0 ? (even+=1) : (odd+=1)
        }
    }
    return (odd, even)
}

var result2 = countNumbers(string: "123456789")
print("Odd: \(result2.odd)")
print("Even: \(result2.even)")

// 5.1.4 함수 매개 변수명
// 5.1.5 외부 매개 변수명 축약
// 5.1.6 기본 매개 변수 값
func joinName(_ firstName: String, _ lastName: String, joiner:String = " ") -> String {
    return "\(firstName)\(joiner)\(lastName)"
}

var fullName = joinName("Jong Soo", "Kim", joiner:",")
print(fullName)
fullName = joinName("Jong Soo", "Kim")
print(fullName)

// 5.1.7 가변 매개 변수
func average (_ nums: Int...) -> Float {
    var sum:Float = 0
    for num in nums {
        sum += Float(num)
    }
    return sum/Float(nums.count)
}

print(average(1,2,3))
print(average(1,2,3,4))
print(average(1,2,3,4,5,6))

// 5.1.8 상수와 변수 매개 변수
func doSomething(_ num: Int) {
    var a = num
    a += 1
    print(a)
}

var b = 8
doSomething(8)
print(b)

// 5.1.9 In-Out 매개 변수
func fullName2(_ name:inout String, withTitle title:String) {
    name = title + " " + name;
}

var myName = "Jong soo Kim"
fullName2(&myName, withTitle: "Mr.") // myName이 변수임을 주목, &은 C에서 주소값에 접근하는 키워드 비슷?
print(myName)

