//
//  14681.swift
//  Algorithm
//
//  Created by yeomim kim on 2024/01/03.
//
// #사분면

import Foundation


if let x = Int(readLine()!), let y = Int(readLine()!) {
    if x > 0 {
        if y > 0 {
            print("1")
        } else {
            print("4")
        }
    } else {
        if y > 0 {
            print("2")
        } else {
            print("3")
        }
    }
}

