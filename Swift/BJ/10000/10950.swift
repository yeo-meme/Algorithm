//
//  10950.swift
//  Algorithm
//
//  Created by yeomim kim on 2024/01/04.
//

import Foundation


//1
func calculator() {
    let input = readLine()!.split(separator:" ").map { Int($0)! }
    let a = input[0], b = input[1]
    print(a+b)
}

let t = Int(readLine()!)!

for _ in 0..<t{
    calculator()
}


//2
let testCaseNum = Int(readLine()!)!

var results = [Int]()

for _ in 0..<testCaseNum {
    let inputTotal = readLine()!.split(separator:" ").compactMap { Int($0)}.reduce(0,+)
    results.append(inputTotal)
}

results.forEach { print($0)}
