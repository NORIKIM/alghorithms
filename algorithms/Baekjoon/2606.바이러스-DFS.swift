//
//  File.swift
//  temp
//
//  Created by 김지나 on 2023/12/05.
//

import Foundation

//let node = Int(readLine()!)!
//let edge = Int(readLine()!)!
//
//var graph: [Int:[Int]] = [:]
//var visited: [Int] = []
//for i in 1...node {
//    graph.updateValue([], forKey: i)
//}
//
//for _ in 1...edge {
//    let input = readLine()!.split { $0 == " " }.map { Int(String($0))! }
//    graph[input[0]]?.append(input[1])
//    graph[input[1]]?.append(input[0])
//}
//
//func dfs(_ node: Int) {
//    if visited.contains(node) {
//        return
//    }
//
//    visited.append(node)
//    for node in graph[node]! {
//        dfs(node)
//    }
//}
//
//dfs(1)
//
//print(visited.count - 1)
