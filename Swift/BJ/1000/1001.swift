//
//  1001.swift
//  Algorithm
//
//  Created by yeomim kim on 2023/06/15.


//1001 A-B

import Foundation


let line = readLine()
//String? readLine()이 옵셔널타입 반환이므로


//1
//옵셔널만 넘어오렴
//nil인 아닌 경우만 separator적용
//nil이면 걍 nil을 적용한다
if let lineArr = line?.split(separator: " ") {
    //: 숫자가 아닌 문자일 가능성
    if let a = Int(lineArr[0]), let b = Int(lineArr[1]) {
        print(a-b)
    }
}

//2 line이 옵셔널 타입인 경우에만 실행되며, line이 옵셔널이 아닌 경우에는 실행안됨
if let line = line {
//line이 옵셔널인 경우에는 lineArr을 생성하여 문자열을 공백으로 분리
//map 각요소를 $0 , 강제추출
    let lineArr = line.split(separator: " ").map{ Int($0)! }
    let a = lineArr[0],b = lineArr[1]
    print(a-b)
}

//3
let line1 = readLine()

//3 map변환한 Int형 정수가 옵셔널 타입므로  옵셔널 바인딩하는 방법
if let line1 = line {
    let lineArr = line.split(separator: " ").map{ Int($0) }
    if let a = lineArr[0],let b = lineArr[1]{
    print(a-b)
    }
}
