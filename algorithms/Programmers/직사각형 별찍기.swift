//
//  직사각형 별찍기.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/17.
//

import Foundation

import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for i in 0 ..< b {
    var star = ""
    for j in 0 ..< a {
        star += "*"
    }
    print(star)
}
