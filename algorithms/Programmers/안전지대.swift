//
//  안전지대.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/20.
//

import Foundation

func solution(_ board:[[Int]]) -> Int {
    var oneLocation = [(Int, Int)]()
    var oneArroundLocation = [(Int, Int)]()

    for i in 0 ..< board.count {
        for j in 0 ..< board.count {
            if board[i][j] == 1 {
                oneLocation.append((i,j))
            }
        }
    }

    for i in 0 ..< oneLocation.count {
        let (x, y) = oneLocation[i]
        let arroundXY = bfs(x, y, board, oneArroundLocation)
        oneArroundLocation.append(contentsOf: arroundXY)
    }

    let bombArea = oneArroundLocation.count + oneLocation.count
    return (board.count * board.count) - bombArea
}

func bfs(_ x: Int, _ y: Int, _ board: [[Int]], _ location: [(Int, Int)]) -> [(Int, Int)] {
    // 대각선위왼쪽, 상, 대각선위오른쪽, 좌, 우, 대각선아래왼쪽, 하, 대각선아래오른쪽
    let direction = [(-1,-1), (-1,0), (-1,1), (0,-1), (0,1), (1,-1), (1,0), (1,1)]
    var result = [(Int, Int)]()

    // nx, ny 범위 체크
    for i in 0 ..< direction.count {
        let nx = x + direction[i].0
        let ny = y + direction[i].1

        if nx < 0 || nx > board[0].count - 1 || ny < 0 || ny > board[0].count - 1 {
            continue
        }

        if board[nx][ny] == 0 {
            if location.count == 0 {
                result.append((nx, ny))
            }
            else {
                if !compare(location, with: (nx, ny)) {
                    result.append((nx, ny))
                }
            }
        }
    }

    return result
}

func compare(_ location: [(Int, Int)], with current: (Int, Int)) -> Bool {
    for (x, y) in location {
        if x == current.0 && y == current.1 {
            return true
        }
    }
    return false
}
