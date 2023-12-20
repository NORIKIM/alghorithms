//
//  연속된 수의 합.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/20.
//

import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    var result = [Int]()
    var baseNumber = num
    var number = num

    while true {
        for _ in 0 ..< num {
            result.append(number)
            number += 1
        }

        let resultSum = result.reduce(0, +)
        if resultSum == total {
            break
        } else if resultSum > total {
            result.removeAll()
            baseNumber -= 1
            number = baseNumber
        } else {
            result.removeAll()
            baseNumber += 1
            number = baseNumber
        }
    }

    return result
}
