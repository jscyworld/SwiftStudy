//: Playground - noun: a place where people can play

import UIKit
import Foundation

/*
 
 -- Chapter 3. 문자열과 문자
 
 */

// 3.2 문자열 함수

// 3.2.1 동일성
/*
 
 ==와 !=
 비교하는 두 문자열이 정확히 같은 순서면 true
 
 */

// 3.2.2 접두사와 접미사
var url: String = "www.apple.com"
var prefix = "http://"
if !url.hasPrefix(prefix) {
    url = prefix + url
}
print(url)

var url2 = "http://developer.apple.com" + "/library" + "/ios"
var suffix = "/"
if url2.hasSuffix(suffix) {
    print("URL ends with \(suffix)")
} else {
    print("URL doesn't ends with \(suffix)")
}

// 3.2.3 문자열 길이
let s1 = "Buenos días."
print(s1.characters.count)

// 3.2.4 부분 문자열
let swiftString = "The quick brown fox jumps over the laze dog."
print((swiftString as NSString).length)
print(swiftString[swiftString.startIndex])
print(swiftString[swiftString.index(after: swiftString.startIndex)])
print(swiftString[swiftString.index(before: swiftString.endIndex)])

var index = swiftString.index(swiftString.startIndex, offsetBy: 2)
print(swiftString[index])
index = swiftString.index(swiftString.endIndex, offsetBy: -3)
print(swiftString[index])

print(swiftString[swiftString.index(after: index)])
print(swiftString[swiftString.index(before: index)])

index = swiftString.index(swiftString.startIndex, offsetBy: 2)
print(swiftString.substring(from: index))
print(swiftString.substring(to: index))

let r = Range<Int>(uncheckedBounds: (lower: 4, upper: 8))
let startIndex = swiftString.index(swiftString.startIndex, offsetBy: r.lowerBound)
let endIndex = swiftString.index(startIndex, offsetBy: r.upperBound - r.lowerBound + 1)
var range = Range<String.Index>(uncheckedBounds: (lower: startIndex, upper: endIndex))
print(swiftString.substring(with: range))

let char:Character = "i"
var cnt = 0
for c in swiftString.characters {
    if c != char {
        cnt += 1
    } else {
        break
    }
}
print(cnt)


// 3.2.5 String을 Array로 변환하기
var str = "voilà"
var arr = Array(str.characters)
print(arr[4])

// 3.2.6 형 변환
var s2 = "400"
var amount1 = Int(s2)

var s3 = "1.25"
var amount2 = Double(s3)
var amount2_1 = (s3 as NSString).doubleValue

var num1 = 200
var num2 = 1.25
var s4 = String(num1)
var s5 = "\(num1)"
var s6 = String(num2)
var s7 = "\(num2)"

