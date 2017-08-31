//: Playground - noun: a place where people can play

import UIKit

// Data Types

let num1 = 12.1875
let num2 = 1.21875e1
let num3 = 1.21875e-1
let num4 = 0xC.3p0

let oneMil = 1_000_000


let twothousand : UInt16 = 2000
let one : UInt8 = 1
let addTwo = twothousand + UInt16(one)

let three = 3
let underFiveNum = 0.14159
let pi = Double(three) + underFiveNum



// 튜플 (Tuples)

let http404error = (404, "Page Not Found")
let (statusCode, statusMessage) = http404error
print("Status Code is \(statusCode)")
print("Status Message is \(statusMessage)")

let (onlyCode, _) = http404error
print("Give me just a code. : \(onlyCode)")

print("Code is \(http404error.0)")
print("Message is \(http404error.1)")

let http200status = (code: 200, message: "ok")
print("Code is \(http200status.code)")
print("Code is \(http200status.0)")