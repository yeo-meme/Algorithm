//
//  1008.swift
//  Algorithm
//
//  Created by yeomim kim on 2023/06/18.
//

import Foundation


let line = readLine()!


//error code
//1. line?.split(separator:" ") 옵셔널이 아닌 반환타입은 subString
//일시적 문자열로 안전하지 않은 강제 언래핑을 수행할수없다

if let lineArr = line?.split(separator:" ").map({ ($0)! }) {
    let a = Int(lineArr[0]),b = Int(lineArr[1])
       let result = a / b
       print(result)
}

//error code
//2. 옵셔널을 수행하지 않은상태 //subString?
//value of optional type '[String.SubSequence]?' (aka 'Optional<Array<Substring>>') must be unwrapped to refer to member 'subscript' of wrapped base type '[String.SubSequence]' (aka 'Array<Substring>')
let lineArr1 = line?.split(separator:" ").map({($0)})
if let a = Int(lineArr1[0]), let b = Int(lineArr2[1]) {
    print(Int(a)/Int(b))
}

//정답코드
//3. Optional<Array<Substring>>' 이라고 해서 언래핑 진행
if let lineArr1 = line?.split(separator:" ").map({($0)}) {
    if let a = Double(lineArr1[0]), let b = Double(lineArr1[1]) {
        print(a/b)
    }
}


//정답코드
//4.
if let lineArr3 = line?.split(separator:" ").map({($0)}), lineArr3.count >= 2 {
    if let a = Double(lineArr3[0]), let b = Double(lineArr3[1]){
        print(a/b)
    }
}

let arr = readLin()!.split(separator: " ").map{ Double($0)! }
print(arr[0] / arr[1])










