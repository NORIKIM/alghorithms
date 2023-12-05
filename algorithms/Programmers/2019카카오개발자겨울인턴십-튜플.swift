//
//  2019카카오개발자겨울인턴십-튜플.swift
//  algorithms
//
//  Created by 김지나 on 2023/10/17.
//

import Foundation

// https://school.programmers.co.kr/learn/courses/30/lessons/64065

// 테스트 코드 통과 하지만 채점 시 에러 발생
//func solution(_ s:String) -> [Int] {
//    let sArr = s.split(separator: "{").map{String($0).components(separatedBy: CharacterSet.decimalDigits.inverted)}.map{$0.joined()}
//    let numberArr = sArr.sorted { first, second in
//        return first.count < second.count
//    }
//    var stringNumber = [numberArr[0]]
//
//    for i in 1 ..< numberArr.count {
//        var number = numberArr[i]
//        for j in 0 ..< stringNumber.count {
//            if number.contains(stringNumber[j]) {
//                number = number.replacingOccurrences(of: stringNumber[j], with: "")
//            }
//        }
//        stringNumber.append(number)
//    }
//
//    return stringNumber.map{Int($0)!}
//}

//https://velog.io/@minji0801/Swift-%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%A8%B8%EC%8A%A4-Lv.2-%ED%8A%9C%ED%94%8C-2019-%EC%B9%B4%EC%B9%B4%EC%98%A4-%EA%B0%9C%EB%B0%9C%EC%9E%90-%EA%B2%A8%EC%9A%B8-%EC%9D%B8%ED%84%B4%EC%8B%AD
func solution(_ s:String) -> [Int] {
    var result: [Int] = []

    // [1]
    // s를 배열로 만들기
    // ex) "{{2},{2,1},{2,1,3},{2,1,3,4}}" -> [[2], [2, 1], [2, 1, 3], [2, 1, 3, 4]]
    var sets = s.split(omittingEmptySubsequences: true, whereSeparator: { "}".contains($0) }).map {
        $0.split(omittingEmptySubsequences: true, whereSeparator: { "{,".contains($0) }).map { Int($0)! }
    }

    // [2]
    // 원소의 개수를 기준으로 오름차순 정렬하기
    sets.sort { (lhs, rhs) -> Bool in
        lhs.count < rhs.count
    }

    // [3]
    // Set의 subtracting을 이용해서 result와 겹치지 않는 것을 골라내기
    // ex) Set($0) = [2, 3], result = [3] 일 때
    //     Set($0).subtracting(result) = [2]
    sets.forEach {
        result.append(Array(Set($0).subtracting(result)).first!)
    }

    return result
}
