//
//  피보나치.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/20.
//

import Foundation

func solution(_ n:Int) -> Int {
    var pibo = [1, 1]

    if n == 2 {
        return 1
    }

    for _ in 3 ... n {
        pibo.append(pibo[pibo.count - 1] + pibo[pibo.count - 2])
    }

    return pibo.last!
}
