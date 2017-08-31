//: Playground - noun: a place where people can play

import UIKit
import Foundation

/*
 
 -- Chapter 3. 문자열과 문자
 
 */

// 3.3 NSString과 상호연동
var str1 = "This is a Swift string"
print(str1.uppercased())
print(str1.lowercased())
print(str1.capitalized)

var fruitsStr = "apple,orange,pineapple,durian"
var fruits = fruitsStr.components(separatedBy: ",")
for fruit in fruits {
    print(fruit)
}

// 3.3.1 String을 NSString으로 변환하기
print(str1.contains("Swift"))
print((str1 as NSString).contains("Swift"))
print(str1.characters.count)
print((str1 as NSString).length)

var nsRange = NSMakeRange(5, 2)
//str1.replacingCharacters(in: nsRange, with: "was")
var swiftRange = str1.index(str1.startIndex, offsetBy: 5) ..< str1.index(str1.startIndex, offsetBy: 7)
str1 = str1.replacingCharacters(in: swiftRange, with: "was")
print(str1)

// 3.3.2 NSString을 직접 사용하기
var str2:NSString = "This is a NSString in Objective-C. " // equivalent to: var str2 = "This is a NSString in Objective-C. " as NSString
print(str2.length)
print(str2.contains("NSString")); print(str2.hasPrefix("This")); print(str2.hasSuffix(". "))
print(str2.uppercased)
print(str2.lowercased)
print(str2.capitalized)
/*
 
 String에선 uppercased()
 NSString에선 uppercased
 
 */
print(str2.appending("Yeah!"))
print(str2.appendingFormat("This is a number: %d", 123))

var range = str2.range(of: "Objective-C")
if range.location != NSNotFound {
    print("Index is \(range.location) length is \(range.length)")
    str2 = str2.replacingCharacters(in: range, with: "Swift") as NSString
    print(str2)
}

var path:NSString = "/Users/wei-menglee/Desktop"
range = path.range(of: "/", options: NSString.CompareOptions.backwards)
if range.location != NSNotFound {
    print("Index is \(range.location)")
}

// 3.3.3 Stirng? NSString?
let bouquet = "\u{1f490}"
print(bouquet.characters.count)
print((bouquet as NSString).length)

var s6 = "volia" + "\u{300}"
print(s6.characters.count)
print((s6 as NSString).length)


















