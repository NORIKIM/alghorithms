//
//  배열의 평균값.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/03.
//

import Foundation

func solution(_ numbers:[Int]) -> Double {
    return Double(numbers.reduce(0,+)) / Double(numbers.count)
}
