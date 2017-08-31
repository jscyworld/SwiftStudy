//: Playground - noun: a place where people can play

import UIKit
/*
 
 -- Chapter 2. 자료형 --
 
 */


print("Size of Int: \(MemoryLayout<Int>.size) bytes")
//print("Size of Int: \(sizeof(Int.self)) bytes") -- Swift 1.2

var num0 = 4
//print("Size of num: \(sizeofValue(num)) bytes") -- Swift 1.2
print("Size of num: \(MemoryLayout.size(ofValue: num0)) bytes")


print("UInt8 - min: \(UInt8.min) Max: \(UInt8.max)")
print("UInt16 - min: \(UInt16.min) Max: \(UInt16.max)")
print("UInt64 - min: \(UInt64.min) Max: \(UInt64.max)")
print("Int64 - min: \(Int64.min) Max: \(Int64.max)")

let num1 = 15
let num2 = 0b1111
let num3 = 0o17
let num4 = 0xf
let bill = 1_000_000_000

print("Size of double: \(MemoryLayout<Double>.size) bytes")
print("Size of float: \(MemoryLayout<Float>.size) bytes")

let num5 = 3.45678e2
let num6 = 34567.8e-2
let num8 = 0x2cp3
let num9 = 0x2cp-3

var x = 7
var y = 8
var pt = (7,8)
print("\(pt.1)" + " \(pt.0)")
print(pt.0)

var flight = (flightno: 747, src: "ATL", dst: "LAX")
print("\(flight.flightno)" + " \(flight.src)" + " \(flight.dst)")

let str = "125"
let num = Int(str)
print(num!+2)

var str2: String?
str2 = "hello"
print(str2!)

