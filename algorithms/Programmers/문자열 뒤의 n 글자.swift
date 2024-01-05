//
//  문자열 뒤의 n 글자.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/05.
//

import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    return String(my_string.suffix(n))
}
