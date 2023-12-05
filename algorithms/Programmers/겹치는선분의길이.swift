//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2023/11/30.
//

import Foundation

// https://zoiworld.tistory.com/831
//func solution(_ lines:[[Int]]) -> Int {
//    var result = Set<Int>()
//    for i in lines[0][0]+1...lines[0][1] {
//        if (i > lines[1][0] && i <= lines[1][1]) ||
//            (i > lines[2][0] && i <= lines[2][1]) {
//            result.insert(i)
//        }
//    }
//    for i in lines[1][0]+1...lines[1][1] {
//        if (i > lines[2][0] && i <= lines[2][1]) {
//            result.insert(i)
//        }
//    }
//    return result.count
//}

// https://codingga-dingga.tistory.com/121
func solution(_ lines:[[Int]]) -> Int {
    // 원소의 start와 end의 범위가 -100 ~ 100 사이 이므로 200개의 count
    var table = Array(repeating: [], count: 200)
    
    for i in 0..<lines.count{
        for j in lines[i][0] ..< lines[i][1] {
            // 좌표의 위치를 찍어준다(넣어둔다)
            table[j+100].append(i)
        }
    }
    
    // 좌표는 2개 이상 겹쳐져야 하므로 같은 좌표가 찍혀서 []의 개수가 2개 이상 되는 곳들만 찾아서 반환
    return table.filter{$0.count > 1}.count
}
