//: Playground - noun: a place where people can play

import UIKit
import Foundation

/*
 
 -- Chapter 3. 문자열과 문자
 
 */



// 3.1 문자열
let str1 = "This is a string in Swift" // constant
var str2 = "This is another string in Swift" // variable

var str3: String = "This is yet another string in Swift"
var str4 = ""
var str5 = String()
if str4.isEmpty {
    print("Empty string")
}

// 3.1.1 문자열 가변성
var myName = "Jong Soo"
myName += " Kim"
print(myName)
// let 변수는 연산불가(immutable)

// 3.1.2 문자열 값 타입
var originStr = "This is the original"
var cpyStr = originStr
print(cpyStr)

cpyStr = "This is the copy"
print(cpyStr)

// 3.1.3 문자
let helloWorld = "Hello, World!"
for c in helloWorld.characters {
    print(c)
}

// 3.1.4 문자열 연결
var hello = "Hello"
var comma = ","
var world = "World"
var exclamation = "!"
var space = " "
var combine = hello + comma + space + world + exclamation
print(combine)

// 3.1.5 특수문자
var quotation = "Albert Einstein: \"A person who never...\""
print(quotation)

// 3.1.6 유니코드
let hand: Character = "\u{270b}"
let star = "\u{2b50}"

let aGrave = "\u{e0}"
let aGrave2 = "\u{61}\u{300}"

var voila = "voila"
voila = "voila" + "\u{300}"
print(voila)
voila = "vo" + "\u{301}" + "ila" + "\u{300}"
print(voila)



