//
//  정수 제곱근 판별.swift
//  temp
//
//  Created by 김지나 on 2024/01/11.
//

import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/12934
func solution(_ n:Int64) -> Int64 {
    let resultNum = Int64(sqrt(Double(n)))
    return resultNum * resultNum == n ? (resultNum + 1) * (resultNum + 1) : -1
}
