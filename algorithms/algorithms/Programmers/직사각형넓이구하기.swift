//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2023/11/28.
//

import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var x = dots[0][0] - dots[1][0] != 0 ? dots[0][0] - dots[1][0] : (dots[0][0] - dots[2][0] != 0 ? dots[0][0] - dots[2][0] : dots[0][0] - dots[3][0])
    var y = dots[0][1] - dots[1][1] != 0 ? dots[0][1] - dots[1][1] : (dots[0][1] - dots[2][1] != 0 ? dots[0][1] - dots[2][1] : dots[0][1] - dots[3][1])
    return abs(x)*abs(y)
}
