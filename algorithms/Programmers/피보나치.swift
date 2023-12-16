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
        pibo.append(pibo[pibo.count - 1] + pibo[pibo.count - 2])
    }
    
    return pibo.last!
}

