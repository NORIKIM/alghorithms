//
//  배열만들기2.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/20.
//

import Foundation

func solution(_ l:Int, _ r:Int) -> [Int] {
    var result = [Int]()

    for i in l ... r {
        if i % 5 == 0 {
            var iString = String(i).replacingOccurrences(of: "0", with: "")
            iString = iString.replacingOccurrences(of: "5", with: "")
            if iString == "" {
                result.append(i)
            }
        }
    }

    return result.isEmpty ? [-1] : result
}
