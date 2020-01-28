import UIKit

var str = "Hello, playground"


var globalVariable = 10
var color = UIColor.red
//[weak ] в начале описания замыкания - capture list
var closure : (Int) -> Void = {[weak color] integer in
    print(globalVariable, integer)
    color
}


//range - диапазон чисел и др

//closed range - диапазон чисел от n до nn (n и nn включены в диапазон)

let doubleClosedRange = 1...111.1
let intClosedRange = 1...111 // 1>=value<=111

//half-closed range

let doubleHalfClosedRange = -10.0..<10

//one-sided range

let intOneSidedRangeTo = ...10

let intOneSidedRangeFrom = 10...
intOneSidedRangeFrom.contains(10)


intOneSidedRangeTo.upperBound


//Loops

//in range

let autoArray = Array(repeating: 1, count: 20)

for element in autoArray {
    print(element)
}


for index in 0...5 {
    print(index)
}

for _ in -10...5 {
    
}

for index2 in 0..<5 {
    print(index2)
}


for value in autoArray.enumerated() { //enumerated - возвращает пронумерованную последовательность
    print(value.element, value.offset)
    guard value.offset == 10 else { continue } //break
    print("Number 10:\(value.element)")
}

//while


//repeat {
//
//} while true


//continue - loops
//break - loops

//fallthrough - switch

//return - function
//throw

//for person in people {
// if person.age < 18 {
// continue
// }
//}

//HW - constraints

