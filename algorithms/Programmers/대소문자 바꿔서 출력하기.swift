//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/18.
//

import Foundation

let s1 = readLine()!
var newString = ""

extension String {
    var isLowercased: Bool {
        for c in utf8 where (65...90) ~= c { return false }
        return true
    }
    var isUppercased: Bool {
        for c in utf8 where (97...122) ~= c { return false }
        return true
    }
}

for i in s1 {
    if String(i).isLowercased {
        newString += String(i).uppercased()
    } else {
        newString += String(i).lowercased()
    }
}

