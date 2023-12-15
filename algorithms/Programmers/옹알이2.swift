//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/15.
//

import Foundation


func counting(_ word: String) -> Bool {
    let babbling = ["aya", "ye", "woo", "ma"]
    var result = ""
    var lastWord = ""
    let words = word.map { String($0) }
    
    for i in words {
        result += i
        
        // 현재까지의 단어가 발음 가능한 단어에 포함되어있는지 확인
        // lastword에 없는 단어인지 확인
        if babbling.contains(result) && result != lastWord {
            // 이미 확인된 단어를 lastword에 넣고
            lastWord = result
            // 현재까지의 단어를 초기화 후 다음 Step 으로 넘어간다.
            result = ""
        }

    }
    
    return result.isEmpty
}

func solution(_ words:[String]) -> Int {
    // counting 함수를 통해 받은 결과가 true인 것만 카운팅
    return words.map { counting($0) }.filter { $0 }.count
}
