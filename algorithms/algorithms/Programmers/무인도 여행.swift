//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/01.
//

import Foundation

// https://0urtrees.tistory.com/377
func solution(_ maps: [String]) -> [Int] {
    // maps의 각 요소를 2차원 character 배열로 하나씩 분리
    let graph = maps.reduce(into: [[Character]]()) { result, map in
        result.append(Array(map))
    }
    let row = graph.count // 가로
    let col = graph[0].count // 세로
    let dx = [0, 0, 1, -1] // 좌우로 움직일 방향
    let dy = [-1, 1, 0, 0] // 상하로 움직일 방향
    var queue = [[Bool]](repeating: [Bool](repeating: false, count: col), count: row)
    
    func dfs(_ x: Int, _ y: Int) -> Int {
        var sum = Int(graph[x][y].asciiValue!) - 48
        
        if graph[x][y] == "X" {
            return 0
        }
        
        queue[x][y] = true
        
        for i in dx.indices {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            // 범위 체크
            if nx >= row || nx < 0 || ny >= col || ny < 0 {
                continue
            }
            if queue[nx][ny] {
                continue
            }
            
            queue[nx][ny] = true
        }
        
        return 0
    }
    
    var ans = [Int]()
    
    for i in 0 ..< row {
        for j in 0 ..< col {
            if queue[i][j] || graph[i][j] == "X" {
                continue
            }
            
            let sum = dfs(i, j)
            if sum > 0 {
                ans.append(sum)
            }
        }
    }
    
    return ans.isEmpty ? [-1] : ans.sorted()
}


//solution(["X591X","X1X5X","X231X", "1XXX1"])
