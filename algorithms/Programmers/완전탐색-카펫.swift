//
//  완전탐색-카펫.swift
//  algorithms
//
//  Created by 김지나 on 2023/10/07.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/42842

import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    let totalCellCount = brown + yellow
    var number = 3
    
    while true {
        if (totalCellCount % number != 0) || (((number - 2) * ((totalCellCount / number) - 2)) < yellow)  {
            number += 1
        } else {
            break
        }
    }
    
    return number < (totalCellCount / number) ? [(totalCellCount / number),number] : [number,(totalCellCount / number)]
}
