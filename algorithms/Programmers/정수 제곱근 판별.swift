//
//  정수 제곱근 판별.swift
//  algorithms
//
//  Created by 인터웍스_맥북 on 1/19/24.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    let resultNum = Int64(sqrt(Double(n)))
    return resultNum * resultNum == n ? (resultNum + 1) * (resultNum + 1) : -1
}
