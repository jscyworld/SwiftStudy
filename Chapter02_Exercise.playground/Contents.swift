//: Playground - noun: a place where people can play

import UIKit
import Foundation
// 1.

var weight = 154
var height = 66.9
var bmi = (Double(weight) / pow(height,2) * 703.06957964)
print(bmi)


// 2., 3.
enum cartoonCharacters: Int {
    case Felix
    case Angel
    case PPG
    case Spider = 9
    case George
    case Superman
    case Batman
}

var d = cartoonCharacters.George
print(d.rawValue)
d = cartoonCharacters.Angel
print(d.rawValue)


// 4.
var isMember: Bool? = true
if isMember! {
    print("User is a member")
} else {
    print("User is not a member")
}