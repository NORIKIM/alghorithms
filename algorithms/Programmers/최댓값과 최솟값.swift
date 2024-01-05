//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/05.
//

import Foundation

func solution(_ s:String) -> String {
    let numbers = s.split(separator: " ").map{Int(String($0))!}
    return "\(numbers.min()!) \(numbers.max()!)"
}
