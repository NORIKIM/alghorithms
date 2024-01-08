//
//  다음에 올 숫자.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/08.
//

import Foundation

func solution(_ common:[Int]) -> Int {
    let first = common[1] - common[0]
    let second = common[2] - common[1]

    return first == second ? common.last! + first : common.last! * common[1] / common[0]
}
