//
//  main.swift
//  temp
//
//  Created by 김지나 on 2024/01/11.
//

import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/12948
func solution(_ phone_number:String) -> String {
    let lastFourNumber = phone_number.suffix(4)
    return String(repeating: "*", count: phone_number.count - 4) + lastFourNumber
}
