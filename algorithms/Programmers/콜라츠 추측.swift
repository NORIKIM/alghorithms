//
//  콜라츠 추측.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/14.
//

import Foundation

func solution(_ num:Int) -> Int {
    var n = num
    var count = 0
    
    if n == 1 {
        return 0
    }
    
    for i in 0 ..< 500 {
        if n % 2 == 0 {
            n = n / 2
        } else {
            n = (n * 3) + 1
        }
        count += 1
        
        if n == 1 {
            return count
        }
    }
    return -1
}
