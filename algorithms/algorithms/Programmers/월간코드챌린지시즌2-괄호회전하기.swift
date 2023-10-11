//
//  월간코드챌린지시즌2-괄호회전하기.swift
//  algorithms
//
//  Created by 김지나 on 2023/10/11.
//

// https://school.programmers.co.kr/learn/courses/30/lessons/76502

import Foundation

// 1차
// 테스트 코드 1번 시간초과
func solution(_ s:String) -> Int {
    var s = s
    var count = 0

    for _ in 0 ..< s.count {
        let removeFirstString = String(s.dropFirst())
        let firstString = String(s.removeFirst())
        var myString = removeFirstString + firstString
        s = myString

        for _ in 0 ..< s.count / 2 {
            myString = myString.replacingOccurrences(of: "{}", with: "")
            myString = myString.replacingOccurrences(of: "()", with: "")
            myString = myString.replacingOccurrences(of: "[]", with: "")
            if myString.isEmpty || myString == "" {
                break
            }
        }

        if myString.isEmpty || myString == "" {
            count += 1
        }

    }
    return count
}

// 2차
func solution(_ s:String) -> Int {
    var brackets = s
    var s = s
    var count = 0

    for _ in 0 ..< s.count {
        while brackets.contains("[]") || brackets.contains("{}") || brackets.contains("()") {
            brackets = brackets.replacingOccurrences(of: "{}", with: "")
            brackets = brackets.replacingOccurrences(of: "()", with: "")
            brackets = brackets.replacingOccurrences(of: "[]", with: "")

        }

        if brackets.isEmpty {
            count += 1
        }
        let firstString = s.removeFirst()
        s.append(firstString)
        brackets = s

    }
    return count
}

// 참고
// https://developer-eddy403.tistory.com/129
//func solution(_ s:String) -> Int {
//    var brackets = s
//    var s = s
//    var result = 0
//
//    for _ in s {
//        while brackets.contains("[]") || brackets.contains("{}") || brackets.contains("()") {
//            brackets = brackets.replacingOccurrences(of: "[]", with: "")
//            brackets = brackets.replacingOccurrences(of: "{}", with: "")
//            brackets = brackets.replacingOccurrences(of: "()", with: "")
//        }
//
//        if brackets.isEmpty {
//            result += 1
//        }
//
//        let cycle = s.removeFirst()
//        s.append(cycle)
//        brackets = s
//    }
//    return result
//}

