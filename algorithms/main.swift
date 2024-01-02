//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/02.
//

import Foundation

// 가장 깔끔하나 시간초과
func solution1(_ s:String, _ skip:String, _ index:Int) -> String {
    let alphabet = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
    var s = s.map { String($0) }
    
    for i in 0..<s.count {
        if var c = alphabet.firstIndex(of: s[i]) {
            var index = index
            
            while index != 0 {
                c += 1
                c %= 26
                
                if skip.contains(alphabet[c]) { continue }
                
                index -= 1
                s[i] = alphabet[c]
            }
        }
    }
    return s.joined()
}
//출처: https://developer-eddy403.tistory.com/123 [@EddiOS:티스토리]

// 통과되는 코드
// https://codingga-dingga.tistory.com/257
func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    func find(_ ch: Int) -> String{
        var cnt = 0, pos = 1
        var target = ch
        
        while cnt < index {
            pos = pos > 26 ? 1 : pos
            target = ch + pos > 122 ? ch + pos - 26 : ch + pos
            
            if !skip.contains(String(UnicodeScalar(target)!)) {
                cnt += 1
                
            }
            pos += 1
            
        }
        return target > 122 ? String(UnicodeScalar(target-26)!) : String(UnicodeScalar(target)!)
        
    }
    
    var result = ""
    for i in s {
        result += find(Int(i.asciiValue!))
        
    }
    return result
    
}
