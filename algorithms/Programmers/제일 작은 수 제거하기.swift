//
//  제일 작은 수 제거하기.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/15.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    var arr = arr
    
    if arr.count == 1 {
        return [-1]
    }
     
    let minIndex = arr.firstIndex(of: arr.min()!)
    arr.remove(at: minIndex!)
    
    return arr
}
