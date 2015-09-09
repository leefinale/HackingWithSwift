//: Playground - noun: a place where people can play

import UIKit

extension Int {
    mutating func plusOne() {
        ++self
    }
}

extension Int {
    static func random(#min: Int, max: Int) -> Int {
        if max < min { return min }
        return Int(arc4random_uniform(UInt32(max - min) + 1)) + min
    }
}

var myInt = 10
myInt.plusOne()
myInt


Int.random(min: 1, max: 10)