//
//  File.swift
//  temp
//
//  Created by 김지나 on 2023/12/05.
//

import Foundation

var map = [[Int]]()
let mapLine = Int(readLine()!)!

func solution() {
    var answer = [Int]()
    var complexNumber = 0
    
    for _ in 0 ..< mapLine {
        let lineString = readLine()!
        var line = [Int]()
        
        for character in lineString {
            line.append(Int(String(character))!)
        }
        map.append(line)
    }
    
    for i in 0 ..< map.count {
        for j in 0 ..< map.count {
            if map[i][j] == 1 {
                complexNumber += 1
                answer.append(dfs(i, j))
            }
        }
    }
    
    print(complexNumber)
    answer = answer.sorted()
    for count in answer {
        print(count)
    }
}

func dfs(_ x: Int, _ y: Int) -> Int {
    let dx = [-1,1,0,0]
    let dy = [0,0,-1,1]
    var out = 1
    var stack = [(x, y)]
    map[x][y] = 0
    
    while !stack.isEmpty {
        let stackLast = stack.removeLast()
        
        for i in 0 ..< dx.count {
            let nx = stackLast.0 + dx[i]
            let ny = stackLast.1 + dy[i]
            
            if nx < 0 || nx >= mapLine || ny < 0 || ny >= mapLine {
                continue
            } else {
                if map[nx][ny] == 1 {
                    map[nx][ny] = 0
                    stack.append((nx, ny))
                    out += 1
                }
            }
        }
    }
    return out
}

//solution()
