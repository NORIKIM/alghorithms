//
//  main.swift
//  algorithms
//
//  Created by 김지나 on 2024/01/05.
//

import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var card1Idx = 0
    var card2Idx = 0
    
    for i in 0 ..< goal.count {
        let word = goal[i]
        
        if let card1WordIdx = cards1.firstIndex(of: word) {
            if card1WordIdx == card1Idx {
                card1Idx += 1
            } else {
                return "No"
            }
        } else {
            if let card2WordIdx = cards2.firstIndex(of: word) {
                if card2WordIdx == card2Idx {
                    card2Idx += 1
                } else {
                    return "No"
                }
            }
        }
    }
    
    return "Yes"
}
