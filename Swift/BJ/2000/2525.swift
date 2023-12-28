//
//  2525.swift
//  Algorithm
//
//  Created by yeomim kim on 2023/12/28.
//

import Foundation


let input = readLine()!.split(separator:" ").map{ Int($0)! }
let hour = input[0], min = input[1]
let addMin = Int(readLine()!)!

func calculateCookingTime(currentHour: Int, currentMinute: Int, cookingTime: Int) {
    
    
    let totalMinutes = currentHour * 60 + currentMinute + cookingTime
    let finalHour = (totalMinutes / 60) % 24
    let finalMinute = totalMinutes % 60
    
    print("\(finalHour) \(finalMinute)")
    
}



calculateCookingTime(currentHour: hour, currentMinute: min, cookingTime: addMin)
