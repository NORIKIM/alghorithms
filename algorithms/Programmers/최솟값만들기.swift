//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2023/10/19.
//

import Foundation

// 출처: https://joycestudios.tistory.com/142
// 최소값과 최대값을 하나씩 뽑아서 곱하고 합산
func solution(_ A:[Int], _ B:[Int]) -> Int {
    var answer: Int = 0
    // 입력된 A 정수 리스트를 오름차순으로 정렬합니다.
    let acs = B.sorted(by: <)
    // 입력된 B 정수 리스트를 내림차순으로 정렬합니다.
    let desc = A.sorted(by: >)
 
    for i in 0..<acs.count {
        answer += acs[i] * desc[i]
    }
 
    return answer
}

solution([1,4,2], [5,4,4])
