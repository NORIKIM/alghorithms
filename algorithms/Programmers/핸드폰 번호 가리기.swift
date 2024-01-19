//
//  핸드폰 번호 가리기.swift
//  algorithms
//
//  Created by 인터웍스_맥북 on 1/19/24.
//

import Foundation

func solution(_ phone_number:String) -> String {
    let lastFourNumber = phone_number.suffix(4)
    return String(repeating: "*", count: phone_number.count - 4) + lastFourNumber
}
