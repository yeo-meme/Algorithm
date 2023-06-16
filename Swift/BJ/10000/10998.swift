//
//  10998.swift
//  Algorithm
//
//  Created by yeomim kim on 2023/06/16.
//

import Foundation


let line = readLine()

//1
if let lineArr = line?.split(separator:" ") {
    if let a = Int(lineArr[0]), let b = Int(lineArr[1]) {
        print(a * b)
    }
}

//2
if let line = line {
    let lineArr = line.split(separator: " ").map{ Int($0)! }
    let a = lineArr[0], b = lineArr[1]
    print(a * b)
}

//3 error
//"trailing closure in this context is confusable with the body of the statement; pass as a parenthesized argument to silence this warning" 경고
//이 경고는 클로저가 구문의 몸체와 혼동
if let line1 = readLine()?.split(separator: " ").map{ Int($0) } {
    if let a = Int(line1[0]), let b = Int(line1[1]) {
        print(a * b)
    }
}

//3 수정 구문
//({}) 클로저를 감싸는이유 : 클로저 구문을 명확하게 하기위해서 -> 가독성 :선택적
//클로저를 전달할 때, 클로저의 매개변수와 리턴 타입을 명확히 지정해야 합니다
//클로저의 구문은 중괄호 {}로 둘러싸여 있으며, 매개변수와 리턴 타입은 중괄호 내부에 정의
if let line2 = readLine()?.split(separator: " ").map({ Int($0) }) {
    if let a = line2[0], let b = line2[1] {
        print(a * b)
    }
}


//4
if let line3 = readLine()?.split(separator: " ").map({ Int($0) }), line3.count >= 2 {
    if let a = line3[0], let b = line3[1]{
        print(a * b)
    }
}
    
