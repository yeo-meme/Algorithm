//
//  2753.swift
//  Algorithm
//
//  Created by yeomim kim on 2023/11/21.
//

import Foundation


//오답처리됨??
let line = readLine()!

let number = Int(line)!
if number % 4 == 0 && (number % 100 != 0 || number % 400 == 0) {
    print("1")
} else {
    print("0")
}

