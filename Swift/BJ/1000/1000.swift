//
//  1000.swift
//  Algorithm
//
//  Created by yeomim kim on 2023/06/15.


//1000 A+B
import Foundation

//1 강제추출
let line = readLine()!
let lineArr = line.split(separator: " ")

let a = Int(lineArr[0])!
let b = Int(lineArr[1])!

print(a+b)


//2 강제추출
let line1 = readLine()!
let lineArr2 = line1.components(separatedBy: " ")

print(Int(lineArr2[0])! + Int(lineArr2[1])!)


