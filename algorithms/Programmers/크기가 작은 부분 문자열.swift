//
//  크기가 작은 부분 문자열.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/18.
//

import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var result = 0
    var t = t.map{ String($0) }
    
    for i in 0 ... t.count - p.count {
        var stringNumber: String = ""
        
        for j in i ..< i + p.count {
            stringNumber += t[j]
        }
        
        if Int(stringNumber)! <= Int(p)! {
            result += 1
        }
    }

    return result
}
