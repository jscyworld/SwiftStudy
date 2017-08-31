//: Playground - noun: a place where people can play

import UIKit
import Foundation

// 1. 증가/감소 연산자는 Swift 3.0에 없음

// 2.
var nums = [3, 4, 2, 1, 5, 7, 9, 8]
var sum = 0
for cnt in 0..<nums.count {
    if nums[cnt] % 2 != 0 {
        sum += nums[cnt]
    }
}
print(sum)

// 3.
