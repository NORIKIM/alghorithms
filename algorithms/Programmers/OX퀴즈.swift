//
//  OX퀴즈.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/14.
//

import Foundation

func solution(_ quiz:[String]) -> [String] {
    var result = [String]()

    for i in quiz {
        let function = i.split(separator: " ")
        let operate = function[1]
        var calculate = 0

        if operate == "+" {
            calculate = Int(function[0])! + Int(function[2])!
        } else {
            calculate = Int(function[0])! - Int(function[2])!
        }

        let isEqual = calculate == Int(function[4]) ? "O" : "X"
        result.append(isEqual)
    }

    return result
}
