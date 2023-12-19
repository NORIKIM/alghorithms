//
//  main.swift
//  알고리즘
//
//  Created by 1000338 on 2023/12/16.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = Array(repeating: Array(repeating: 0, count: arr2[0].count), count: arr1.count)
    
    for i in 0 ..< answer.count {
        for j in 0 ..< answer[0].count {
            for k in 0 ..< arr2[0].count {
                answer[i][j] += arr1[j][k] * arr2[k][j]
            }
        }
    }
    return answer
    
}

