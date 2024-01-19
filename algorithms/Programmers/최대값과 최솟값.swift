//
//  최대값과 최솟값.swift
//  algorithms
//
//  Created by 인터웍스_맥북 on 1/19/24.
//

import Foundation

func solution(_ s:String) -> String {
    let numbers = s.split(separator: " ").map{Int(String($0))!}
    return "\(numbers.min()!) \(numbers.max()!)"
}
