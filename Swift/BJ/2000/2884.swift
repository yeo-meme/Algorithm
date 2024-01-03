//
//  2884.swift
//  Algorithm
//
//  Created by yeomim kim on 2023/11/29.
//

import Foundation


let input = readLine()!.split(separator: " ").map { Int($0)! }
let hour = input[0], min = input[1]
//1. 음수 일때 : hour * 60 + min - 45
//2. 분으로 24시간을 더하여 양수로 만들어준다 (45분제외한)

let time = hour * 60 + min - 45 < 0 ? 60 * 24 + min - 45 : hour * 60 + min - 45
print(time / 60, time % 60)



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
