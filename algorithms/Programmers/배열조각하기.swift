//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/05.
//

import Foundation

// 문제자체에 오류가 있음..
//func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
//    var arr = arr
//
//    for i in 0 ..< query.count {
//        let base = query[i]
//
//        if i % 2 == 0 {
//            if arr.count > base {
//                arr.removeSubrange(base + 1 ... arr.count - 1)
//            }
//        } else {
//            if arr.count > base && base > 1 {
//                arr.removeSubrange(0 ... base - 1)
//            }
//        }
//    }
//    return arr
//}

// https://hwanny7.tistory.com/55
func solution(_ arr:[Int], _ query:[Int]) -> [Int] {
    var first : Int = 0
    var last : Int = arr.count
    
    for index in 0..<query.count {
        if index % 2 == 0 {
            last = first + query[index]
        } else {
            first += query[index]
        }
    }

    return Array(arr[first...last])
}

//solution([1,2,3,4,5,6,7,8], [5,2])
