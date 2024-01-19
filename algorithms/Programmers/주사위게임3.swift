//
//  주사위게임3.swift
//  algorithms
//
//  Created by 인터웍스_맥북 on 1/19/24.
//

import Foundation

func solution(_ a:Int, _ b:Int, _ c:Int, _ d:Int) -> Int {
    let dice = [a, b, c, d]
    let setDice = Array(Set(dice))
    
    if setDice.count == 1 {
        return 1111 * a
    } else {
        let a = dice.filter { $0 == setDice[0] }
        let b = dice.filter { $0 == setDice[1] }
        
        if setDice.count == 2 {
            if a.count == b.count {
                return (a[0] + b[0]) * abs(a[0] - b[0])
            } else {
                let result1 = (10 * a[0]) + b[0]
                let result2 = (10 * b[0]) + a[0]
                return a.count > b.count ? result1 * result1 : result2 * result2
            }
            
        } else if setDice.count == 3 {
            let c = dice.filter { $0 == setDice[2] }
            let two = [a,b,c].filter{ $0.count == 1 }
            return two[0][0] * two[1][0]
            
        } else {
            return dice.min()!
        }
    }
  
    return 0
}
