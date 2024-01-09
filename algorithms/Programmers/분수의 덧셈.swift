//
//  분수의 덧셈.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/09.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if a % b == 0 {
        return b
    }
    return gcd(b, a % b)
}

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    // 분자의 최대값
    var maxDenum = denum1 * num2 + denum2 * num1
    // 분모의 최대값
    var maxNum = num1 * num2
    // 분자최대값과 분모최대값의 최대공약수
    var gcdValue = gcd(maxDenum, maxNum)
    // 각각 최대공약수로 나눠줌
    var result = [maxDenum / gcdValue, maxNum / gcdValue]
    
    return result
}
