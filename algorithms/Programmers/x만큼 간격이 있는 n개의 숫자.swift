//
//  x만큼 간격이 있는 n개의 숫자.swift
//  temp
//
//  Created by 김지나 on 2024/01/11.
//

import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/12954
func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result = [x]
    
    for _ in 0 ..< n - 1 {
        result.append(result[0] + x)
    }
    
    return result.map {Int64($0)}
}
