//
//  코드처리하기.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/20.
//

import Foundation

func solution(_ code:String) -> String {
    var ret = ""
    let code = code.map{String($0)}
    var mode = 0

    for idx in 0 ..< code.count {
        if mode == 0 {
            if code[idx] == "1" {
                mode = 1
            } else {
                if idx % 2 == 0 {
                    ret += code[idx]
                }
            }
        }

        else {
            if code[idx] == "1" {
                mode = 0
            } else {
                if idx % 2 != 0 {
                    ret += code[idx]
                }
            }
        }

    }

    return ret != "" ? ret : "EMPTY"
}
