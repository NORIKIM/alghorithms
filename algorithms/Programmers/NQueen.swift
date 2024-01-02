//
//  NQueen.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/02.
//

import Foundation

func solution(_ n:Int) -> Int {
    var chess = Array(repeating: -1, count: n)
    var answer = 0
    
    // 퀸의 위치 확인
    func checkArrangeQueen(row: Int) -> Bool {
        for i in 0 ..< row {
            // 같은 열이거나 대각선일 경우
            // 현재열 == row || x - x == y - y
            if chess[i] == chess[row] || abs(chess[row] - chess[i]) == abs(row - i) {
                return false
            }
        }
        
        return true
    }
    
    // 행을 기준으로 DFS. 1행 -> 2행 -> 3행 ...
    func dfs(row: Int) {
        // 만약에 끝까지 다 배치했을 경우. +1
        if row == n {
            answer += 1
            return
        }
        
        // 하나의 행에서 모든 열을 검사
        for i in 0 ..< n {
            chess[row] = i // 그 자리에 일단 배치
            
            if checkArrangeQueen(row: row) {
                // 배치할 수 있다면,
                dfs(row: row + 1) // 다음 행 DFS
            }
            // 배치할 수 없다면 다음 index로 넘어감.
        }
    }
    
    dfs(row: 0)
    
    return answer
}
