//
//  main.swift
//  알고리즘
//
//  Created by 1000338 on 2023/12/16.
//

import Foundation

func solution(_ n:Int) -> Int {
    var pibo = [1, 1]
    
    if n == 2 {
        return 1
    }
    
    for _ in 3 ... n {
        let num = pibo[pibo.count - 1] + pibo[pibo.count - 2]
        pibo.append(num % 1234567)
    }
    
    return pibo[n - 1]
}

