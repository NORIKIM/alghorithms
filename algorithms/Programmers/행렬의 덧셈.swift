//
//  행렬의 덧셈.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/16.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
  var result: [[Int]] = []
  for i in 0..<arr1.count {
    result.append([])
    for j in 0..<arr1[i].count {
      result[i].append(arr1[i][j] + arr2[i][j])
    }
  }
  return result
}
