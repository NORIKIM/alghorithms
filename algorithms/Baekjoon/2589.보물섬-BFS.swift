//
//  main.swift
//  temp
//
//  Created by 김지나 on 2023/12/05.
//

import Foundation

import Foundation

// https://minny27.tistory.com/38
//let input = readLine()!.split(separator: " ").map{Int(String($0))!}
//let height = input[0], width = input[1]
//var map = [[String]]()
//let direct = [[-1,0], [1,0], [0,-1], [0,1]] // 상하좌우
//var ans = 0
//for _ in 0..<height {
//    map.append(readLine()!.map{String($0)})
//}
//
//func boundary(_ i: Int, _ j: Int) -> Bool {
//    return (0 <= i && i < height) && (0 <= j && j < width)
//}
//
//func bfs(_ i: Int, _ j: Int) {
//    var q = [[i, j]]
//    var visited = Array(repeating: Array(repeating: 0, count: width), count: height)
//    visited[i][j] = 1
//
//    while !q.isEmpty {
//        // 출발지 설정(상하좌우 확인할 위치)
//        let data = q.removeFirst()
//        let dx = data[0], dy = data[1]
//
//        for k in direct {
//            let nx = dx + k[0], ny = dy + k[1]
//            // 바운더리에 없거나, 방문하지 않은 곳인지 확인
//            if !boundary(nx, ny) || visited[nx][ny] != 0 {
//                continue
//            }
//
//            if map[nx][ny] == "L" {
//                visited[nx][ny] = visited[dx][dy] + 1
//                ans = ans < visited[dx][dy] ? visited[dx][dy] : ans
//                q.append([nx, ny])
//                continue
//            }
//        }
//    }
//}
//
//for i in 0..<height {
//    for j in 0..<width {
//        if map[i][j] == "W" {
//            continue
//        }
//        bfs(i, j)
//    }
//}
//print(ans)

// https://dev-with-precious-dreams.tistory.com/entry/%EB%B0%B1%EC%A4%80Swift-2589%EB%B2%88-%EB%B3%B4%EB%AC%BC%EC%84%AC
//HW[0] == 세로 , HW[1] == 가로
var HW = readLine()!.split(separator: " ").map{Int(String($0))!}
//탐색방향
var direction = [(-1,0),(1,0),(0,-1),(0,1)]
var map = Array(repeating: [String](), count: HW[0])

for i in 0..<HW[0]{
    map[i] = readLine()!.map{String($0)}
}

//최단경로
var max = 0

for y in 0..<HW[0]{ //세로
    for x in 0..<HW[1]{ //가로
        if map[y][x] == "L"{ //특정 좌표 (x,y)가 길인가?
            let day = bfs(x,y) //bfs탐색
            if max < day { max = day } //최단 경로인가?
        }
    }
}
func bfs(_ x :Int , _ y : Int ) -> Int{
    //bfs탐색 결과 저장
    var shortPath = Array(repeating: Array(repeating: -1, count: HW[1]), count: HW[0])
    //최단 경로 길이
    var maxPath = 0
    var queue = [(Int,Int)]()
    queue.append((x,y))
    //시작지점 값 0
    shortPath[y][x] = 0
    
    while !queue.isEmpty {
        let (dx,dy) = queue.removeFirst()
        for i in direction{
            let nx = dx + i.0
            let ny = dy + i.1
            
            // 상하좌우 확인하면서 지도의 범위를 벗어나면 index out of range 에러가 발생하므로 범위 확인을 해주어야 함
            if ny < 0 || ny > HW[0] - 1 || nx < 0 || nx > HW[1] - 1{
                continue
            }
            
            if map[ny][nx] == "L" && shortPath[ny][nx] == -1 {
                //특정 지역 이동 시 1시간
                shortPath[ny][nx] = shortPath[dy][dx] + 1
                if maxPath < shortPath[ny][nx] { maxPath = shortPath[ny][nx]}
                queue.append((nx,ny))
            }
        }
    }
    return maxPath
}
print(max)

