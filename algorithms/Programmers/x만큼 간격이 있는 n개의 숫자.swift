//
//  x만큼 간격이 있는 n개의 숫자.swift
//  algorithms
//
//  Created by 인터웍스_맥북 on 1/19/24.
//

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    var result = [x]
    
    for _ in 0 ..< n - 1 {
        result.append(result[0] + x)
    }
    
    return result.map {Int64($0)}
}
