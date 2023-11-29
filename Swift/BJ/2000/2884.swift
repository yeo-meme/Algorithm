//
//  2884.swift
//  Algorithm
//
//  Created by yeomim kim on 2023/11/29.
//

import Foundation


let number = readLine()!
let numberArr = line.split(separator:" ")
var hour = Int(numberArr[0])!
var minute = Int(numberArr[1])!


minute -= 45
if minute < 0 {
    minute = 60 - (-minute)
    hour -= 1
}

if hour < 0 {
    hour = 24 - (-hour)
}

print("알림시간 \(hour)시 \(minute)분")


//-----------------------------------------2

func alarm(_ hour: Int, _ minute: Int) -> (Int,Int) {
    var totalHour = hour
    var totalMinute = minute - 45
    
    if totalMinute < 0 {
        totalMinute += 60
        totalMinute -= 1
        if totalHour < 0 {
            totalHour += 24
        }
    }
    
    return (totalHour, totalMinute)
}
if let input = readLint() {
    let time = input.split(separator:" ").compactMap{ Int($0) }
    
    
    if time.count == 2 {
        let (hour, minute) = alarm(time[0], time[1])
        print("\(hour) \(minute)")
    }
}
