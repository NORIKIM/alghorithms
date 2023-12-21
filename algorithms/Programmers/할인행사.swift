//
//  할인행사.swift
//  algorithms
//
//  Created by 김지나 on 2023/12/21.
//

import Foundation

/*
 func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
     var shoppingList = [String:Int]()
     var result = 0
     
     for i in 0 ..< want.count {
         shoppingList[want[i]] = number[i]
     }
     
     for i in 0 ..< discount.count {
         if want.contains(discount[i]) {
             result = i + 1
             let count = shopping(list: shoppingList, discount: discount, index: i)
             
             if !count {
                 continue
             } else {
                 break
             }
         }
        
     }
     
     return result
 }

 func shopping(list: [String:Int], discount: [String], index: Int) -> Bool {
     var list = list
     let range = index + 9 >= discount.count ? discount.count - index : index + 9
     
     for i in index ... range {
         list[discount[i]]! -= 1
     }
     
     for (_,value) in list {
         if value > 0 {
             return false
         }
     }
     
     return true
 }
 */

// 회원등록 날짜의 총 일수를 구하는 문제
// 문제 자체를 잘못 이해해서 답봄
func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var answer = 0

    for i in 0..<(discount.count - 9) {
        var temp = Array(repeating: 0, count: want.count)
        for j in i..<(i + 10) {
            if let idx = want.firstIndex(of: discount[j]) {
                temp[idx] += 1
            }
        }
        if number == temp {
            answer += 1
        }
    }

    return answer
}

