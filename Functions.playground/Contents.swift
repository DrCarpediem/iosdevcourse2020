import UIKit

var str = "Hello, playground"

//function - block of code with a given name that can be executed on demand by calling that name

func addTwoNumbers() {
    let a = 1
    let b = 2
    let c = a + b
    
    print(c)
}

addTwoNumbers()

func subtrackTwoNumbers () {
    let d = 5
    let e = 1
    let f = d - e
    
    print(f)
}

subtrackTwoNumbers()

//return value

 func addTwoNumbers2() -> Int {
    
     let a2 = 1
     let b2 = 2
     let c2 = a2 + b2
     
     return c2
 }
 
let sum = addTwoNumbers2()
print(sum)

// function parameters

func addTwoNumbers3(using number1: Int, and number2: Int) -> Int {
    
     let a2 = number1
     let b2 = number2
     let c2 = a2 + b2
     
     return c2
 }
 
let sum2 = addTwoNumbers3(using: 5, and: 5)
print(sum2)
