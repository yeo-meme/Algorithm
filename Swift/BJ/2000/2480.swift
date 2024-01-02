//
//  2480.swift
//  Algorithm
//
//  Created by yeomim kim on 2024/01/02.
//

import Foundation


let dice = readLine()!.split(separator:" ").map{Int($0)!}

//case1. 3개 모두 같은경우
if dice[0] == dice[1] && dice[1] == dice[2] {
    print(1000 + dice[0]*1000)
} //case2. 2개만 같은경우 0 == 1 or 1 == 2
else if dice[0] == dice[1] || dice[1] == dice[2] {
    print(1000 + dice[1]*100)
} // or 0 == 2
else if dice[0] == dice[2] {
    print(1000 + dice[0]*100)
} //case3. 모두 다를경우
else {
    print(dice.max()! * 100)
}
