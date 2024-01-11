//
//  main.swift
//  temp
//
//  Created by 김지나 on 2023/12/05.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0,+)) / Double(arr.count)
}
