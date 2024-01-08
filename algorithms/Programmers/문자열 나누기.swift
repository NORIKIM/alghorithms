//
//  문자열 나누기.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/08.
//

import Foundation

func solution(_ s:String) -> Int {
    var start = 1
    let s = s.map{ String($0) }
    var xCount = 1
    var notXCount = 0
    var x = String(s.first!)
    var result = 0
    
    if s.count == 1 {
        return 1
    }
     
    while true {
        if start == s.count - 1 {
            result += 1
            break
        }
        if s[start] == x {
            xCount += 1
        } else {
            notXCount += 1
            
            if xCount == notXCount {
                result += 1
                x = s[start + 1]
                start = start + 2
                xCount = 1
                notXCount = 0
                if start == s.count {
                    result += 1
                    break
                }
                continue
            }
        }
        
        start += 1
    }
    return result
}
