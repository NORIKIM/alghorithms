//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2023/10/13.
//

import Foundation

// 1차
//func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//    var index = -1
//    var result = [Int]()
//
//    for i in 0 ..< n {
//        for j in 0 ..< n {
//            var number = 0
//            if i >= j {
//                number = i + 1
//            } else {
//                number = j + 1
//            }
//            index += 1
//
//            if index >= left && index <= right {
//                result.append(number)
//            }
//        }
//    }
//    return result
//}

// 2차
//func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//    var index = -1
//    var result = [Int]()
//
//    for i in 0 ..< n {
//        for j in 0 ..< n {
//            index += 1
//
//            if index >= left && index <= right {
//                if i >= j {
//                    result.append(i + 1)
//                } else {
//                    result.append(j + 1)
//                }
//            }
//
//
//        }
//    }
//
//    return result
//}

// 답
//func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
//    let result: [Int] = (Int(left)...Int(right)).map {
//        max($0 / n + 1, $0 % n + 1)
//    }
//
//    return result
//}

// https://hogumachu.tistory.com/21
func solution(_ n:Int, _ left:Int64, _ right:Int64) -> [Int] {
    let n = Int64(n)
    var result = [Int]()

    for i in left ... right {
        let value = max( Int((i/n)+1), Int(i%n+1) )
        result.append(value)
    }

    return result
}

print(solution(4,7,14))
