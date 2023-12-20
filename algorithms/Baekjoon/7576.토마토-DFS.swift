//
//  7576.토마토-DFS.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/20.
//

import Foundation

// 출처: https://didu-story.tistory.com/280

let mn = readLine()!.split(separator: " ").map { Int(String($0))! }
let m = mn[0]
let n = mn[1]
var box = [[Int]]()
// 며칠이 지났는지 판단하기 위함, 한칸한칸 토마토가 익어나갈 때마다 +1 해줌
var day = Array(repeating: Array(repeating: 0, count: 1001), count: 1001)

// 토마토 박스 만들기
for _ in 0..<mn[1] {
    let temp = readLine()!.split(separator: " ").map{Int(String($0))!}
    box.append(temp)
}

let dx = [0, 0, -1, 1]
let dy = [-1, 1, 0, 0]

var queue = [[Int]]()
// 가장 마지막에 방문한 idx는 마지막날 확인한 토마토라는 의미
var lastIdx = [0, 0]
var idx = 0
// 익은 토마토가 있냐 없냐
var isCooked = true

for i in 0..<n {
    for j in 0..<m {
        if box[i][j] == 1 {
            queue.append([i, j])
        }
    }
}

func bfs() {
    while idx < queue.count {
        let pop = queue[idx]
        idx += 1

        for k in 0..<4 {
            let nx = pop[0] + dx[k]
            let ny = pop[1] + dy[k]

            if nx >= 0 && nx < n && ny >= 0 && ny < m {
                if box[nx][ny] == 0 {
                    box[nx][ny] = 1
                    queue.append([nx, ny])
                    day[nx][ny] = day[pop[0]][pop[1]] + 1
                    lastIdx = [nx, ny]
                }
            }
        }
    }
}

bfs()
for i in 0..<n {
    for j in 0..<m {
        if box[i][j] == 0 {
            isCooked = false
        }
    }
}

if isCooked {
    print(day[lastIdx[0]][lastIdx[1]])
} else {
    print(-1)
}
