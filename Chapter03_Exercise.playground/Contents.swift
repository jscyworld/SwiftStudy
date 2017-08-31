//: Playground - noun: a place where people can play

import UIKit
import Foundation

// 1.
var str1 = "The quick brown fox jumps over the lazy dog"
let char:Character = "q"
var cnt = 0
for c in str1.characters {
    if c != char {
        cnt += 1
    } else {
        break
    }
}
print(cnt)



// 2.
var amount = "1200"
var rate = "1.27"

let num1 = Double(amount)
let num2 = Double(rate)
var result = num1! * num2!

// Alternative
var result2 = (amount as NSString).doubleValue * (rate as NSString).doubleValue



// 3.
var lat = 40.765819
var lng = -73.975866
print("Lat/Lng is (\(lat), \(lng))")